// php/funciones.php

<?php
require_once 'conexion.php';

function obtenerMedicamentos() {
    global $conn;
    $sql = "SELECT * FROM medicamentos";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        return $result;
    } else {
        return false;
    }
}
?>