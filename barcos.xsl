<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                <!--Bootstrap CSS-->
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>

                <!--Foundation CSS-->
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.css"/>

                <meta name="description" content=""/>
                <meta name="author" content=""/>

                <!--Title-->
                <title>SuperYachts</title>

                <!-- css propi -->
                <link href="css/estilo.css" rel="stylesheet"/>

                <!-- script visor -->
                <script type="text/javascript">
                    window.onload = function () { //tras cargar la página ...
                        visor1 = document.getElementById("visor"); //referencia al visor
                        mititulo = document.getElementById("titulo"); //referencia al pie de foto
                    }

                    function mifoto(num) { //cambiar la imagen
                        f = "img/SL86/" + num + ".jpg"; //ruta de la nueva imagen
                        document.images["fotoVisor"].src = f; //cambiar imagen
                        t = document.images["fotos" + num].alt; //texto de pie de foto
                        mititulo.innerHTML = t; //cambiar pie de foto
                    }
                </script>
                <script src="http://maps.googleapis.com/maps/api/js"></script>
                <script>
                    var myCenter = new google.maps.LatLng(38.977695, 1.299599);
                    var marker;

                    function initialize() {
                        var mapProp = {
                            center: myCenter,
                            zoom: 15,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                        var marker = new google.maps.Marker({position: myCenter, animation: google.maps.Animation.BOUNCE});
                        marker.setMap(map);
                    }
                    google.maps.event.addDomListener(window, 'load', initialize);
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
                                <img src="img/barco.png"/>
                            </a>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="index.html">HOME</a>
                                </li>
                                <li>
                                    <a href="alquilar.html">ALQUILAR</a>
                                </li>
                                <li>
                                    <a href="#galeria">GALERIA</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>

                <section class="bg-primary alquilar" id="about">
                    <div class="container">
                        <div class="row">
                            <h1 class="nombre_barco">

                            </h1> 
                            <div class="row featurette"> 
                                <div class="col-md-7"> 
                                    <h2 class="featurette-heading">Descripción</h2>
                                        <p class="lead">
                                            Con sus 26’76 metros de longitud, el Sanlorenzo SL86 es un yate a motor con un revestimiento de fibra de vidrio, diseñado por Officina Italiana Design. Cuenta con un nuevo diseño, con una optimización de los espacios y muchas más
                                            innovaciones con características para convertirlo en un nuevo estándar en yates. La zona de proa, es ahora una sala de estar con sofás, mesas, cojines para tomar el sol, así como un parasol plegable.Para optimizar y maximizar todo el espacio y
                                            enriquecerlo con luz natural, se diseñaron unas ventadas laterales amplias para permitir capturar el máximo de luz exterior posible. Además, el salón tiene un tamaño grande y libera frescura.
                                        </p>
                        </div>
                        <div class="col-md-5">
                            <h2 class="featurette-heading">Especificaciones</h2>
                            <table class="table table-hover tabla">
                                <tbody>
                                    <tr>
                                        <td>Longitud</td>
                                        <td>26.45m</td>
                                    </tr>
                                    <tr>
                                        <td>Ancura</td>
                                        <td>6.35m</td>
                                    </tr>
                                    <tr>
                                        <td>Calado</td>
                                        <td>1.90m</td>
                                    </tr>
                                    <tr>
                                        <td>Pasajeros</td>
                                        <td>8</td>
                                    </tr>
                                    <tr>
                                        <td>Tripulación</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>Velocidad crucero</td>
                                        <td>27 nudos</td>
                                    </tr>
                                    <tr>
                                        <td>Velocidad máxima</td>
                                        <td>32 nudos</td>
                                    </tr>
                                    <tr>
                                        <td>Capacidad fuel</td>
                                        <td>8400 l.</td>
                                    </tr>
                                    <tr>
                                        <td>Puerto</td>
                                        <td>Sant Antoni de Portmany</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>

                    <hr class="featurette-divider"/>

                    <div class="col-md-offset-3 col-md-6">
                        <br/>
                        <a class="btn btn-lg btn-default btn-block" href="reservar.html" role="button">Reservar barco</a>
                        <br/>
                        <br/>
                    </div>

                    <div class="col-lg-offset-1 col-lg-10">
                        <div id="principal">
                            <div id="visor">
                                <img src='img/SL86/1.jpg' class="image-responsive" name='fotoVisor'/>
                            </div>
                        </div>
                        <div id="menu" style="text-align:center;">
                            <img src='img/SL86/1.jpg' class="image-responsive" name='fotos1' onclick="mifoto(1)"/>
                            <img src='img/SL86/2.jpg' class="image-responsive" name='fotos2' onclick="mifoto(2)"/>
                            <img src='img/SL86/3.jpg' class="image-responsive" name='fotos3' onclick="mifoto(3)"/>
                            <img src='img/SL86/4.jpg' class="image-responsive" name='fotos4' onclick="mifoto(4)"/>
                            <img src='img/SL86/5.jpg' class="image-responsive" name='fotos5' onclick="mifoto(5)"/>
                            <img src='img/SL86/6.jpg' class="image-responsive" name='fotos6' onclick="mifoto(6)"/>
                            <img src='img/SL86/7.jpg' class="image-responsive" name='fotos7' onclick="mifoto(7)"/>
                            <img src='img/SL86/8.jpg' class="image-responsive" name='fotos8' onclick="mifoto(8)"/>
                            <img src='img/SL86/9.jpg' class="image-responsive" name='fotos9' onclick="mifoto(9)"/>
                        </div>
                    </div>
                </div>
                <!--Row-->
                <div class="container">
                    <div id="googleMap" class="columns col-md-6 mapa-barco"></div>
                </div>
            </div>
        </section>

        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/docs.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
        <!--Fundation JS-->
        <script src="https://cdn.jsdelivr.net/foundation/6.2.0/foundation.min.js"></script>
    </body>

</html>
</xsl:template>
</xsl:stylesheet>
