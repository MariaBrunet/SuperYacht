<? 
?>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <meta name="description" content="">
    <meta name="author" content="">

    <!--Title-->
    <title>SuperYachts</title>

    <!-- css propi -->
    <link href="css/estilo.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">

    <script src="js/barco.js"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script language="JavaScript">
    function confirmar(){
        alert("Reservado con éxito! ");
        document.form.submit();
    }
    </script>
    <script type="text/javascript">
        $(function() {
            $("#datepicker").datepicker();
        });
        $(function() {
            $("#datepicker2").datepicker();
        });
    </script>
</head>

<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="index.html" class="navbar-brand">
                    <img src="img/barco.png">
                </a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">HOME</a></li>
                    <li><a onclick="requestBarco()" style="cursor: pointer;">ALQUILAR</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section class="bg-primary alquilar" id="about">
        <form class="form-horizontal" action="crearReserva.php" method="POST" name="form">
            <div class="form-group">
                <label class="label-apartado col-sm-offset-1">Datos del barco</label>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Barco</label>
                <div class="col-sm-5">
                    <input class="form-control" name="id" placeholder="
                            <?
                                $selected = $_GET["id"];

                                $doc = new DOMDocument;
                                $doc->load('xml/barcos.xml');
                                $xpath = new DOMXPath($doc);
                                $name = $xpath->query("/barcos/barco[@id=$selected]/nom");
                                $node = $name[0]->nodeValue;
                                echo "$node"

                            ?>" 
                            value="<?
                                $selected = $_GET["id"];

                                $doc = new DOMDocument;
                                $doc->load('xml/barcos.xml');
                                $xpath = new DOMXPath($doc);
                                $name = $xpath->query("/barcos/barco[@id=$selected]/nom");
                                $node = $name[0]->nodeValue;
                                echo "$node"

                            ?>" readonly>
                    </input>
                </div>
            </div>

            <div class="form-group">
                <label class="label-apartado col-sm-offset-1">Datos personales</label>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Nombre</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Nombre" name="nom">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Primer apellido</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Primer apellido" name="llinatge1">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Segundo apellido</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Segundo apellido" name="llinatge2">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">DNI</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="DNI" name="dni">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Teléfono</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Teléfono" name="telf">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Dirección</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" placeholder="Dirección" name="dir">
                </div>
            </div>

            <div class="form-group">
                <label class="label-apartado col-sm-offset-1">Datos de reserva</label>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Entrada</label>
                <div class="col-sm-5">
                    <input class="form-control" id="datepicker" name="entrada" placeholder="Entrada" required>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">Salida</label>
                <div class="col-sm-5">
                    <input class="form-control" id="datepicker2" name="salida" placeholder="Salida" required>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-5">
                    <button onclick="confirmar()" class="form-control btn btn-default btn-reserva">Reservar</button>
                </div>
            </div>
        </form>
    </section>
</body>

</html>
