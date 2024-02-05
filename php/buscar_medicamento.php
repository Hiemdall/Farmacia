<?php
// Incluir el archivo de conexión a la base de datos
include 'conexion.php';

// Obtener el término de búsqueda
$termino = $_GET['termino'];

// Preparar y ejecutar la consulta
$sql = "SELECT m.nombre as medicamento, m.descripcion, s.nombre as sucursal, s.direccion, inv.cantidad 
        FROM inventario_sucursales inv
        JOIN medicamentos m ON inv.id_medicamento = m.id
        JOIN sucursales s ON inv.id_sucursal = s.id
        WHERE m.nombre LIKE ?";
$stmt = $conn->prepare($sql);
$terminoBusqueda = "%".$termino."%";
$stmt->bind_param("s", $terminoBusqueda);
$stmt->execute();
$result = $stmt->get_result();

// Recolectar los resultados
$resultados = array();
while($row = $result->fetch_assoc()) {
    $resultados[] = $row;
}

// Cerrar la conexión
$stmt->close();
$conn->close();

// Devolver los resultados en formato JSON
header('Content-Type: application/json');
echo json_encode($resultados);
?>
