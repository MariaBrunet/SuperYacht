<?
     

    //agafam dades de html
    $idBarco = $_POST['id'];
    $nom = $_POST['nom'];
    $llinatge1 = $_POST['llinatge1'];
    $llinatge2 = $_POST['llinatge2'];
    $dni = $_POST['dni'];
    $telf = $_POST['telf'];
    $direccio = $_POST['dir'];
    $entrada = $_POST['entrada'];
    $sortida = $_POST['salida'];

    //carregam xml actual
    $xml = simplexml_load_file('xml/reserves.xml');

    //cream jerarquia amb dades
    $reserva = $xml->addChild('reserva');
    $reserva->addChild('idBarco', $idBarco);
    $persona = $reserva->addChild('persona');
    $persona->addChild('nom', $nom);
    $persona->addChild('llinatge1', $llinatge1);
    $persona->addChild('llinatge2', $llinatge2);
    $persona->addChild('dni', $dni);
    $persona->addChild('telf', $telf);
    $persona->addChild('direccio', $direccio);
    $data = $reserva->addChild('data');
    $data->addChild('entrada', $entrada);
    $data->addChild('sortida', $sortida);

    //guardam nova reserva
    $xml->asXML("xml/reserves.xml");
    header('Location: index.html');
    echo '<script language="javascript">alert("Reserva creada con éxito");</script>';
?>
