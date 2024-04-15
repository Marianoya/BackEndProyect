const mongoose = require('mongoose')
const express = require('express')

const app = express()
const port = 3004

const url = "mongodb://localhost:27017"
const dbName = "orders_example"

app.use(express.json())

mongoose.connect(url + "/" + dbName)

const db = mongoose.connection;

db.on("error", (err)=>console.error("Error en la conexion de la data base ", err))
db.once('open', ()=>{
    console.log("DB connected sucessfully")
})

// se usa String con mayusucla ya que es una interfaz ademas de que
// que no hace falta agregar los caracteres

const licensingSchema = new mongoose.Schema({
    SOnumber:String,
    POnumber:Number,
    Quantity:String
})

//Siempre que pongamos el nombre del modelo lo va convertir
// en plural y en miniscula todo al pasarlo a mongoose.
//mongoose seria definido como un modelo a la coleccion de datos.
const License = mongoose.model('License', licensingSchema)

app.get('/licenses', async(req, res)=>{
    try{
        const licenses = await License.find()
        res.send(licenses)

    } catch (err){
        res.status(500).send(err)

    }
})

app.post('/licenses', async (req, res)=>{
    const license = new License (req.body)
    try{
      await license.save()
      res.status(201).send(license)
    } catch (err){
    res.status(500).send(err)
    }
})

app.delete('/licenses/:id', async(req, res)=>{
    try{
      const license = await License.findByIdAndDelete(req.params.id)
      if(license){
        res.send(license)
      } else{
        res.status(404).send({message:"License doesn't exist"})
      }
    } catch(err){

        res.status(500).send(err)

    }
})

app.patch('/licenses/:id', async(req, res)=>{
    try{
        const license = await License.findByIdAndDelete(req.params.id, req.body, {new: true})
        if(!license){
            return res.status(400).send()
        }
        res.send(license)

    } catch(err){

        res.status(400).send(err)

    }
})

app.listen(port, ()=>{
    console.log("server running on port ", port)
})
