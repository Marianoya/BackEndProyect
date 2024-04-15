document.getElementById('DeleteButton').addEventListener('click', async function() {
    const licensingID = obtenerUserId(document.getElementById("CustomerNumberTableDelete")); // Debes implementar esta función según tu lógica de aplicación
  
    const url = `/deletelicense/${licensingID}`;
  
    try {
      const response = await fetch(url, {
        method: 'DELETE',
        headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(postData)
      });
  
      if (!response.ok) {
        throw new Error('Hubo un problema al eliminar el usuario.');
      }
  
      const data = await response.json();
      console.log('Licencia eliminada:', data);
      // Haz algo con la respuesta del servidor, si es necesario
    } catch (error) {
      console.error('Error al enviar la solicitud de eliminación:', error);
      // Maneja el error, si es necesario
    }
  });