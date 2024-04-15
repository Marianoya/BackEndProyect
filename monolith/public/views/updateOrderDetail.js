document.getElementById("UpdateButton2").addEventListener("submit", (event)=>{
  event.preventDefault()

    const LicensingId = document.getElementById('CustomerNumberTableUpdate').value; // Obtener el ID del usuario del campo de entrada oculto
    const CustomerName = document.getElementById('CustomerNameTableUpdate').value;

    const nuevosdatos = {
      id: LicensingId,
      CustomerName: CustomerName
    };
   
       fetch('/updatelicense/${id}', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(nuevosdatos),
      })
      .then(response => {
        if (response.ok) {
          alert('Registro actualizado correctamente');
        } else {
          alert('Error al actualizar el registro');
        }
      })
      .catch(error => {
        console.error('Error en la solicitud:', error);
        alert('Error en la solicitud');
      });
})