// js/script.js

document.addEventListener('DOMContentLoaded', (event) => {
    console.log("El DOM está completamente cargado y analizado");
});

// js/script.js
function cargarSucursales() {
    const xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const sucursales = JSON.parse(this.responseText);
            const tabla = document.getElementById('tablaSucursales');

            tabla.innerHTML = `
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                </tr>`;

            sucursales.forEach(function(sucursal) {
                const fila = tabla.insertRow();
                fila.insertCell().innerHTML = sucursal.id;
                fila.insertCell().innerHTML = sucursal.nombre;
            });
        }
    };

    xhttp.open("GET", "php/obtener_sucursales.php", true);
    xhttp.send();
}


function cargarMedicamentos() {
    // Crear una solicitud AJAX
    const xhttp = new XMLHttpRequest();

    // Configurar la solicitud
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // Parsear la respuesta JSON del servidor
            const medicamentos = JSON.parse(this.responseText);

            // Obtener la tabla de medicamentos
            const tabla = document.getElementById('tablaMedicamentos');

            // Limpiar filas existentes en la tabla
            tabla.innerHTML = `
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Descripción</th>
                    <th>Cantidad</th>
                </tr>`;

            // Agregar filas a la tabla con los datos de los medicamentos
            medicamentos.forEach(function(medicamento) {
                const fila = tabla.insertRow();
                fila.insertCell().innerHTML = medicamento.id;
                fila.insertCell().innerHTML = medicamento.nombre;
                fila.insertCell().innerHTML = medicamento.descripcion;
                fila.insertCell().innerHTML = medicamento.cantidad;
            });
        }
    };

    // Abrir la solicitud
    xhttp.open("GET", "php/obtener_medicamentos.php", true);

    // Enviar la solicitud
    xhttp.send();
}

function cargarInventarioSucursales() {
    const xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            const inventario = JSON.parse(this.responseText);
            const tabla = document.getElementById('tablaInventarioSucursales');

            tabla.innerHTML = `
                <tr>
                    <th>ID Medicamento</th>
                    <th>Medicamento</th>
                    <th>Sucursal</th>
                    <th>Cantidad</th>
                </tr>`;

            inventario.forEach(function(item) {
                const fila = tabla.insertRow();
                fila.insertCell().innerHTML = item.id_medicamento;
                fila.insertCell().innerHTML = item.medicamento;
                fila.insertCell().innerHTML = item.sucursal;
                fila.insertCell().innerHTML = item.cantidad;
            });
        }
    };

    xhttp.open("GET", "php/obtener_inventario.php", true);
    xhttp.send();
}


document.addEventListener('DOMContentLoaded', function() {
    cargarMedicamentos();
    cargarSucursales();
    cargarInventarioSucursales();
});
