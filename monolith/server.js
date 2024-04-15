require("dotenv").config();
const express = require("express");
const path = require ("path");
const bcrypt = require ("bcrypt");
const mysql = require ("mysql2");
const bodyParser = require ("body-parser");
const jwt = require ("jsonwebtoken");
const OrderDetail = require('./public/views/sequelizercreate')
const ejs = require('ejs')

const app = express();

const {PORT, DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE, JWT_SECRET} = process.env;


app.use(express.static("public/views"));
app.use(bodyParser.json());
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'public/views'));

const pool = mysql.createPool({
    connectionLimit: 10,
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DB_DATABASE   
});

const authenticateToken = (req, res, next) =>{
    const authHeader = req.headers['authorization'];
    let token = "";
    if(authHeader) {
        token = authHeader.split(" ")[1];

    jwt.verify(token, JWT_SECRET, (err, user)=>{
   if(err){
         console.log(err, "ERROR JWT");
         res.redirect(301, '/login')
         return;
   }
    req.user = user;
    next();
    });
} else{
    res.redirect(301, "/login");
}

};
app.get("", (req, res)=>{
    res.sendFile(path.join(__dirname, "public/views/homepage.html"));
});

app.get("/login", (req, res)=>{
    res.sendFile(path.join(__dirname, "public/views/login.html"));
});

app.post("/login", (req, res)=>{
    const {username, password} = req.body;
    pool.query(
        "SELECT  * FROM  users WHERE username = ?", 
        [username], 
        (err, result)=>{
        if(err) throw err;

        if(result.length > 0 ){
            bcrypt.compare(password, result[0].password, (err2, match) =>{
                if(err2) throw err2;
                if(match) {
                    const token = jwt.sign({name: result[0].username}, JWT_SECRET, {
                        expiresIn:"20m",
                    });
                    res.json({success: true, message: "login correcto", token});
                }else {
                    res.status(404).send({
                        success: false, 
                        message: "usuario no encontrado",
                });
                }
            });
        } else{
            console.error("Error en la DB");
            res.status(404).send({
                success: false,
                message: "Tu usuario o contrasenia es incorrecto",
        });
        }
    }
    );
});

app.get("/signup", (req, res)=>{
    res.sendFile(path.join(__dirname, "public/views/signup.html"));
});


app.post("/signup", (req, res)=>{
    const {username, password} = req.body;
    bcrypt.hash(password, 10, (err, hash) =>{
        if(err){
            return res
            .status (500)
            .json({success: false, message: "No se pudo crear el usuario"});
        }
        pool.query(
            "INSERT INTO users (username, password) values (?, ?)",
            [username, hash], 
            (err2, result)=>{

        if(err2){
            console.error(err2);
            return res
            .status(500)
            .json({success: false, message: "No se pudo crear el usuario"});
        }

        res.json({success:true, message: "Usuario creado exitosamente" });
    }
    );
});
    });

app.get("/products",  (req, res) =>{
    res.sendFile(path.join(__dirname, "public/views/products.html"));
});



//app.patch("/products",  (req, res) =>{
  //  res.sendFile(path.join(__dirname, "ProjectViews/products.html"));
//});

app.post('/createlicense', async (req, res) =>{

    ///'Insert to' to create an user. It's the equivalent. 
    try {
    const newOrderDetail = await OrderDetail.create({
    SOnumber: req.body.SOnumber,
    POnumber: req.body.POnumber,
    CustomerName: req.body.CustomerName,
    });
    res.json(newOrderDetail);
    console.log("License was created succesfully", newOrderDetail.toJSON())
    
    }
    catch (error){
    console.log('Error al crear la orden', error);
    
    }
    
});

async function updateOrderDetail(licensingId, NewCustomerName) {
    try{
     const OrderDetailUpdated = await OrderDetail.update(NewCustomerName,{
        where: {id: licensingId}
     });
    return OrderDetailUpdated;
  } catch (error) {
    console.error('Error al actualizar el registro:', error);
    throw error;
  }
}

app.put('/updatelicense/:id', async (req, res) => {
    const licensingId = req.params.id;
    const NewCustomerName = req.body // Los nuevos datos que provienen del formulario
    try {
      await updateOrderDetail(licensingId, NewCustomerName);
      res.send('Registro actualizado correctamente');
    } catch (error) {
      res.status(500).send('Error al actualizar el registro');
    }
  });

app.delete('/deletelicense/:id', async (req, res) =>{
    const licensingID = req.params.id;
    try{
        const deletedline = await OrderDetail.findByPk(licensingID);

        if(!deletedline){
            return res.status(404).json({ error: 'Licencia no encontrada' });
        } 
        
        await deletedline.destroy();

       
        res.json({ message: 'Usuario eliminado exitosamente'});

    } catch (error){
        console.error(error);
        res.status(500).json({error: "Hubo un error"});
    }
});

app.get("/api/products", authenticateToken, (req, res)=>{
    res.json({products: {electronicos: ["iphone", "galaxy", "zte"]}, user:req.user.name});
    });


app.get("/microservicio", async (req, res)=>{
    //   let url ="http://microservicio:3006/api/productos"
     let url ="http://localhost:3004/api/products"
       try{
   
          const microserviceResponse = await axios.get(url)
          let data = microserviceResponse.data
          res.render('index', {books , data})
       } catch(err){
           res.json({message: `error: ${err.message}`})
       }
       
   })

   app.get('/findLicenses', async (req, res) => {
    try {
      // Realiza la búsqueda de usuarios
      const Detailsof = await OrderDetail.findOne({
        where: {CustomerName}
      });

      if(Detailsof){
        console.log("License found ", Detailsof.toJSON())
      } else{
        console.log("License not found")
      }
  
    } catch (err) {
      console.error(err);
    }
  });

  app.get('/products/table', async (req, res) => {
    try {
      const [rows] = await pool.query('SELECT * FROM licensingtable3');
      res.render('index', { OrderDetails: rows });
    } catch (err) {
      console.error('Error al obtener los usuarios:', error);
      res.status(500).send('Error interno del servidor');
    }
  });


    
app.listen(PORT, ()=>{
    console.log("Si corre el servidor: ", PORT);
});

