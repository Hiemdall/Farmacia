<?php
// Incluir el archivo de conexión a la base de datos
include 'conexion.php';

// Preparar la consulta para obtener todos los medicamentos
$sql = "SELECT * FROM medicamentos";
$result = $conn->query($sql);

$medicamentos = array();

// Verificar si se encontraron filas
if ($result->num_rows > 0) {
    // Recorrer cada fila y agregarla al arreglo
    while($row = $result->fetch_assoc()) {
        $medicamentos[] = $row;
    }
} 

// Cerrar la conexión a la base de datos
$conn->close();

// Establecer el tipo de contenido a JSON
header('Content-Type: application/json');

// Devolver los datos en formato JSON
echo json_encode($medicamentos);
?>