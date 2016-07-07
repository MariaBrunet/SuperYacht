<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

                <!--Bootstrap CSS-->
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>

                <meta name="description" content=""/>
                <meta name="author" content=""/>

                <!--Title-->
                <title>SuperYachts</title>

                <!-- css propi -->
                <link href="css/estilo.css" rel="stylesheet"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
                <link href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet"/>

                <script src="js/barco.js"></script>
                <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
                <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
                <script type="text/javascript">
                    $(function () {
                        $("#datepicker").datepicker();
                    });
                    $(function () {
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
                                <img src="img/barco.png"/>
                            </a>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="index.html">HOME</a>
                                </li>
                                <li class="active">
                                    <a onclick="requestBarco()" style="cursor: pointer;">ALQUILAR</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <section class="bg-primary" id="about">
                    <form action="procesaFiltro.php" class="form-inline filtrado" accept-charset="utf-8" autocomplete="off" role="form" method="POST">
                        <div class="panel-primary panel">
                            <div class="panel-body">
                                <label class="label-filtrado">Isla</label>
                                <div class="form-group">
                                    <select class="form-control" id="select-isla" name="isla">
                                        <option value="Mallorca" selected="selected">Mallorca</option>
                                        <option value="Menorca">Menorca</option>
                                        <option value="Eivissa">Ibiza</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="label-filtrado">Fecha entrada</label>
                                    <input class="form-control" id="datepicker" name="entrada" placeholder="Entrada" required="true"/>
                                </div>
                                <div class="form-group">
                                    <label class="label-filtrado">Fecha salida</label>
                                    <input class="form-control" id="datepicker2" name="salida" placeholder="Salida" required="true"/>
                                </div>
                                <div class="form-group">
                                    <button type="submit" id="buttonNewEmail" name="registrar" class="btn btn-md btn-primary form-control btn-filtrar" value="Envia">Filtrar</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="row">
                        <form name="form1" action="procesaBarco.php" class="form-inline filtrado" accept-charset="utf-8" autocomplete="off" role="form" enctype="text/plain" method="GET">
                            <xsl:for-each select="barcos/barco">
                                <div class="col-md-4 portfolio-item">
                                        <button class="button-barco" type="submit" name="idBarco">
                                            <xsl:attribute name="value">
                                                <xsl:value-of select="@id"/>
                                            </xsl:attribute>
                                            <img class="img-responsive img-alquilar">
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="fotos/foto"/>
                                                </xsl:attribute>
                                            </img>
                                        </button>
                                    <h3>
                                        <xsl:value-of select="nom"/>
                                    </h3>
                                    <p><xsl:value-of select="resum"/></p>
                                </div>
                            </xsl:for-each>
                        </form>
                    </div>
                </section>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
