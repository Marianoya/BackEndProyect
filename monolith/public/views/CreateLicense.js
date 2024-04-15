const userForm = document.getElementById('CreateLicenseDetails');
userForm.addEventListener('submit', function(event) {
  event.preventDefault();

  const SOnumber = document.getElementById('SOnumberTableCreate').value;
  const POnumber = document.getElementById('POnumberTableCreate').value;
  const CustomerName = document.getElementById('CustomerNameTableCreate').value;


  // Define los datos para la solicitud POST
  const postData = {
    SOnumber: SOnumber,
    POnumber: POnumber,
    CustomerName: CustomerName

  };

  fetch('/createlicense', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(postData)

        })
        .then(response => {
          if (!response.ok) {
            throw new Error('Hubo un problema al enviar los datos.');
          }
          return response.json();
        })
        .then(data => {
          console.log('Respuesta del servidor:', data);
          // Haz algo con la respuesta del servidor, si es necesario
        })
        .catch(error => {
          console.error('Error al enviar los datos:', error);
          // Maneja el error, si es necesario
        });
    });