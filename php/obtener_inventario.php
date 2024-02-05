<?php
// Incluir el archivo de conexión a la base de datos
include 'conexion.php';

// Preparar la consulta para obtener los datos del inventario
$sql = "SELECT inv.id_medicamento, m.nombre as medicamento, s.nombre as sucursal, inv.cantidad 
        FROM inventario_sucursales inv
        JOIN medicamentos m ON inv.id_medicamento = m.id
        JOIN sucursales s ON inv.id_sucursal = s.id";
$result = $conn->query($sql);

$inventario = array();

// Verificar si se encontraron filas
if ($result->num_rows > 0) {
    // Recorrer cada fila y agregarla al arreglo
    while($row = $result->fetch_assoc()) {
        $inventario[] = $row;
    }
}

// Cerrar la conexión a la base de datos
$conn->close();

// Establecer el tipo de contenido a JSON
header('Content-Type: application/json');

// Devolver los datos en formato JSON
echo json_encode($inventario);
?>
