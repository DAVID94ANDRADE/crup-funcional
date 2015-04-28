<?php
class AlumnoControlador extends Alumno{
   
    public function guardarDatos($con,$objAlumno) {
        $variableSql = "INSERT INTO alumno ";
        $variableSql .= "(id,nombre,apellido,fecha_nacimiento,";
        $variableSql .= "direccion,carnet,seccion) ";
        $variableSql .= "VALUES (";
        $variableSql.="'".$objAlumno[0]."',";
        $variableSql.="'".$objAlumno[1]."',";
        $variableSql.="'".$objAlumno[2]."',";
        $variableSql.="'".$objAlumno[3]."',";
        $variableSql.="'".$objAlumno[4]."',";
        $variableSql.="'".$objAlumno[5]."',";
        $variableSql.="'".$objAlumno[6]."');";        
        return consultaA($con, $variableSql);
        
        }

        public function modificarDatos($con,$objAlumno) {
        $variableSql = "UPDATE alumno SET  ";
        $variableSql .= "nombre = '".$objAlumno[1]."'";
        $variableSql .= "  ,apellido = '".$objAlumno[2]."'";
        $variableSql .= " ,fecha_nacimiento = '".$objAlumno[3]."'";
        $variableSql .= " ,direccion = '".$objAlumno[4]."'";
        $variableSql .= " ,carnet = '".$objAlumno[5]."'";
        $variableSql .= " ,seccion = '".$objAlumno[6]."'";
        $variableSql .= " WHERE id = ".$objAlumno[0].";";                
        return consultaA($con, $variableSql);
        
        }
}
