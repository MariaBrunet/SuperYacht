<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:apply-templates select="barcos/barco[@id = $Selected]"/>
    </xsl:template>

    <xsl:template match="barco">
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
                <script src="js/barco.js"></script>
                <script src="js/visor.js"></script>
                <script id="mapa">
                    <xsl:attribute name="class">
                        <xsl:value-of select="port"></xsl:value-of>
                    </xsl:attribute>
                    function initialize() {
                        var x,y;
                        var port = document.getElementById("mapa").getAttribute("class");
                        if(port == "Eivissa"){
                            x = 38.977695;
                            y = 1.299599;
                        } else if (port == "Menorca") {
                            x = 39.9885838;
                            y = 3.8285342;

                        } else if (port == "Mallorca"){
                            x = 39.4902406;
                            y = 2.4768167;                          
                        }
                        var myCenter = new google.maps.LatLng(x, y);
                        var marker;
                        var mapProp = {
                            center: myCenter,
                            zoom: 15,
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                        var marker = new google.maps.Marker({position: myCenter, animation: google.maps.Animation.BOUNCE});
                        marker.setMap(map);
                    }
                </script>
                <script async="True" defer="True" src="http://maps.googleapis.com/maps/api/js?key= AIzaSyDH5kZtB74OaDD9HvAB0TkwZZsFrIMY6TA&amp;callback=initialize"></script>
                

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
                                    <a onclick="requestBarco()">ALQUILAR</a>
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
                                <xsl:value-of select="nom"/>
                            </h1> 
                            <div class="row featurette"> 
                                <div class="col-md-7"> 
                                    <h2 class="featurette-heading">Descripción</h2>
                                        <p class="lead">
                                            <xsl:value-of select="descripcio"/>
                                        </p>
                                </div>
                                <div class="col-md-5">
                                    <h2 class="featurette-heading">Especificaciones</h2>
                                    <table class="table table-hover tabla">
                                        <tbody>
                                            <tr>
                                                <td>Longitud</td>
                                                <td><xsl:value-of select="especificacions/metros/eslora"/></td>
                                            </tr>
                                            <tr>
                                                <td>Anchura</td>
                                                <td><xsl:value-of select="especificacions/metros/maniga"/></td>
                                            </tr>
                                            <tr>
                                                <td>Calado</td>
                                                <td><xsl:value-of select="especificacions/metros/eslora"/></td>
                                            </tr>
                                            <tr>
                                                <td>Pasajeros</td>
                                                <td><xsl:value-of select="especificacions/numPassatgers"/></td>
                                            </tr>
                                            <tr>
                                                <td>Tripulación</td>
                                                <td><xsl:value-of select="especificacions/tripulacio"/></td>
                                            </tr>
                                            <tr>
                                                <td>Velocidad crucero</td>
                                                <td><xsl:value-of select="especificacions/velocitat/creuer"/></td>
                                            </tr>
                                            <tr>
                                                <td>Velocidad máxima</td>
                                                <td><xsl:value-of select="especificacions/velocitat/maxima"/></td>
                                            </tr>
                                            <tr>
                                                <td>Capacidad fuel</td>
                                                <td><xsl:value-of select="especificacions/motor"/></td>
                                            </tr>
                                            <tr>
                                                <td>Puerto</td>
                                                <td><xsl:value-of select="port"/></td>
                                            </tr>
                                            <tr>
                                            <td>Precio</td>
                                                <td><xsl:value-of select="preu"/></td>
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
                                        <img class="image-responsive" name='fotoVisor'>
                                            <xsl:attribute name="src">
                                                <xsl:value-of select="fotos/foto[@id = 1]"/>
                                            </xsl:attribute>
                                        </img>
                                    </div>
                                </div>
                                <div id="menu" style="text-align:center;">
                                    <xsl:attribute name="name">
                                        <xsl:value-of select="nomCurt"/>
                                    </xsl:attribute>
                                    <img class="image-responsive" name='fotos1' onclick="mifoto(1)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 1]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos2' onclick="mifoto(2)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 2]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos3' onclick="mifoto(3)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 3]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos4' onclick="mifoto(4)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 4]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos5' onclick="mifoto(5)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 5]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos6' onclick="mifoto(6)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 6]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos7' onclick="mifoto(7)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 7]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos8' onclick="mifoto(8)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 8]"/>
                                        </xsl:attribute>
                                    </img>
                                    <img class="image-responsive" name='fotos9' onclick="mifoto(9)">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="fotos/foto[@id = 9]"/>
                                        </xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
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
