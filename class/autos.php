<?php
class crud
{
    private $db;
    function __construct($conn)
    {
        $this->db = $conn;
    }
    //Muestra los datos en la tabla

    public function dataview($query)
    {
        $stmt = $this->db->prepare($query);
        $stmt->execute() > 0;

        echo '<a href="new_Auto.php"><button type="button" class="btn btn-success btn-sm">Agregar Auto</button><br></a><br>';

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>

            <tr>

                <td><?php echo $row['idAuto']; ?></td>
                <td><?php echo $row['matricula']; ?></td>
                <td><?php echo $row['marca']; ?></td>
                <td><?php echo $row['modelo']; ?></td>
                <td><?php echo $row['color']; ?></td>
                <td><?php echo $row['precio']; ?></td>
                <td align="center">
                    <a href="edit_Autos.php?edit_id=<?php echo $row['idAuto'] ?>"><button type="button" class="btn btn-success btn-sm">Editar</button></a>

                </td>
                <td align="center">

                    <a href="delete_pacientes.php?delete_id=<?php echo $row['idAuto'] ?>">
                        <button type="button" class="btn btn-danger btn-sm">Eliminar</button></a>
                </td>
            </tr>

<?php

        }
    }

    public function update($idAuto, $matricula, $marca, $modelo, $color, $precio)
    {
        try {
            
            $stmt = $this->db->prepare("UPDATE automovil SET matricula=:matricula, marca=:marca,modelo=:modelo,color=:color,precio=:precio
            WHERE idAuto=:idAuto");
            $stmt->bindparam(":matricula", $matricula);
            $stmt->bindparam(":marca", $marca);
            $stmt->bindparam(":modelo", $modelo);
            $stmt->bindparam(":color", $color);
            $stmt->bindparam(":precio", $precio);
            $stmt->bindparam(":idAuto", $idAuto);
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function delete($idAuto/*, $nombre, $apellido, $direccion, $telefono, $dui*/)
    {
        try {
            $stmt = $this->db->prepare("DELETE from automovil WHERE idAuto=:idAuto");
            $stmt->bindparam(":idAuto", $idAuto);
            /*$stmt->bindparam(":nombre", $nombre);
            $stmt->bindparam(":apellido", $apellido);
            $stmt->bindparam(":direccion", $direccion);
            $stmt->bindparam(":telefono", $telefono);
            $stmt->bindparam(":dui", $dui);*/
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function getID($idAuto)
    {
        $stmt = $this->db->prepare("SELECT * FROM automovil WHERE idAuto=:idAuto");
        $stmt->execute(array(":idAuto" => $idAuto));
        $editRow = $stmt->fetch(PDO::FETCH_ASSOC);
        return $editRow;
    }
}
