const OrderDetail = require('./sequelizercreate')

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
    module.export = updateOrderDetail;