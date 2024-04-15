const { Sequelize, DataTypes} = require("sequelize")
const Sequalize = new Sequelize ('licensingtable3', 'root', 'Aqui ponga su contrasenia', {
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

  

module.exports = OrderDetail;
