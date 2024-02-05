// Dentro de tu buscador.js

document.getElementById('btnBuscar').addEventListener('click', function() {
    const termino = document.getElementById('busqueda').value;

    fetch(`php/buscar_medicamento.php?termino=${termino}`)
        .then(response => response.json())
        .then(data => {
            const tabla = document.getElementById('tablaResultados').getElementsByTagName('tbody')[0];
            tabla.innerHTML = '';

            data.forEach(function(item) {
                let fila = tabla.insertRow();
                fila.insertCell().innerHTML = item.medicamento;
                fila.insertCell().innerHTML = item.descripcion;
                fila.insertCell().innerHTML = item.sucursal;

                // Crear enlace a Google Maps
                let direccionCell = fila.insertCell();
                let direccionLink = document.createElement('a');
                direccionLink.href = `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(item.direccion)}`;
                direccionLink.target = '_blank';
                direccionLink.textContent = item.direccion;
                direccionCell.appendChild(direccionLink);

                fila.insertCell().innerHTML = item.cantidad;
            });
        })
        .catch(error => console.error('Error:', error));
});
