<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <link rel="stylesheet" href="./libs/bootstrap/css/bootstrap.css">
    <script src="./libs/jquery-2.1.0.js"></script>
    <link rel="stylesheet" href="./libs/jquery-ui/css/smoothness/jquery-ui-1.10.4.custom.min.css">
    <script src="./libs/validacion/jquery.validate.min.js"></script>
    <script src="./libs/validacion/messages.js"></script>
    <script src="./libs/jquery-ui/js/jquery-ui-1.10.4.custom.js"></script>
    </head>
    <body>
<?php
include './clases/Coneccion.php';
include './clases/Alumno.php';
include './clases/AlumnoControlador.php';

$alumnoA = new AlumnoControlador();

$accion= $_REQUEST['accion'];
switch ($accion) {
    case 'save':
        if(isset($_REQUEST['bot'])){
           $alumnoA->setId('NULL');
           $alumnoA->setNombre($_REQUEST['nombre']);
           $alumnoA->setApellido($_REQUEST['apellido']);
           $alumnoA->setCarnet($_REQUEST['carnet']);
           $alumnoA->setDir($_REQUEST['dir']);
           $alumnoA->setFechaNac($_REQUEST['fecha_nac']);
           $alumnoA->setSeccion($_REQUEST['seccion']);
           $datosObj=array($alumnoA->getId(),
                           $alumnoA->getNombre(),
                           $alumnoA->getApellido(),
                           $alumnoA->getFechaNac(),
                           $alumnoA->getDir(),
                           $alumnoA->getCarnet(),
                           $alumnoA->getSeccion());
           print $alumnoA->guardarDatos($con,$datosObj);
           print '<a href=\'manejadorAlumno.php?accion=con\'>Ver datos</a>';
       }else{
           print 'No se ha enviado datos ';
       }
        break;
    case 'con':        
        $sql = 'SELECT * FROM alumno';
        $datoss =  consultaD($con, $sql);

        print imprimetabla($datoss,"alumno","table table-bordered table-striped",1);
        break;
        default:
        print 'No hay Accion que realizar';
        break;
      }
      print '<a href=\'formularioalumno.php?accion=con\'>Ir al fomulario de incripcion</a>';


 ?>  
     </body>
</html>

 

    
