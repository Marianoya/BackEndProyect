// orm object relation mapping


const { Sequelize, DataTypes} = require("sequelize")
const Sequalize = new Sequelize ('licensingtable2', 'root', 'Aqui ponga su contrasenia', {
    host: 'localhost',
    dialect: 'mysql',

})

//model es decir una tabla que se va llamar usuarios
const OrderDetail = Sequalize.define('OrderDetail', {
    //definir los atributos
    SOnumber: {
        type: DataTypes.STRING,
        allowNull : false
    },
    POnumber: {
        type: DataTypes.STRING,
        allowNull: false
    },
     CustomerName: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
     }
    }, 
    {
        tableName: "OrderDetails"
    }
);

/// seria para crear la table en mysql por lo que entonces tendriamos que 
/// usar los detalles que se mencionan asi como el id se va crear en automatico.
// varchar siempre va poner en 255,
// en este caso la base de datos tiene que estar creada anteriormente para 
// poder crear las tables que despues se llenaran cuando invoquemos la funcion.

Sequalize
         .sync({alter: true})
         .then(()=>{
            console.log("All the models were created in mysql");
        })
        .catch((err)=>console.error(err));


async function createLicensingTable(){
    ///'Insert to' to create an user. It's the equivalent. 
    try {
        const newOrderDetail = await OrderDetail.create({
            SOnumber: "245123M125",
            POnumber: "12-9011H1255",
            CustomerName: "HomeDepot1523"
        })
        console.log("User was created succesfully", newOrderDetail.toJSON())

    }
    catch (error){
        console.log("Error al crear un usuario", )

    }
}

async function updateOrderDetail(licensingId, NewCustomerName) {
try{
 const OrderDetailUpdated = await OrderDetail.update({CustomerName:NewCustomerName},{
    where: {id: licensingId}
 })
 if(OrderDetailUpdated[0]>0){
    console.log("User was updated sucessfully")

 } else{
    console.log("user not found")
 }
}
catch(error){

    console.error(error)

}
}

async function deleteline(licensingId){
    try{
        const deletedline = await OrderDetail.destroy({
            where: {id:licensingId}
        })  
        if(deletedline){
            console.log("User deleted")
        } else{
            console.log("User not found")
        }

    } catch (err){
        console.error(err)

    }
}

async function findUserByCustomerName(CustomerName){
    try{
        const Detailsof = await OrderDetail.findOne({
            where: {CustomerName}
        })

        if(Detailsof){
            console.log("User found ", Detailsof.toJSON())
        } else{
            console.log("User not found")
        }

    } catch(err){
        console.error(err)
    }
}

// creamos un nuevo user pero lo dejams fuera cuando vamos actualizar
// para no duplicar inforamtion y q el correo se actualizae correctamente
// con el nuevo correo.

//createLicensingTable()
updateOrderDetail(1, "WalMart")
//deleteline(1)
findUserByCustomerName("WalMart")

