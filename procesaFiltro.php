<?
	$filtrar = $_POST["isla"];

	$xsl_filename = "listaBarcosFiltro.xsl";	/* nom arxiu xsl */
	$xml_filename = "xml/barcos.xml";	/* nom arxiu xml */
	
	$doc = new DOMDocument();
	$xsl = new XSLTProcessor();
	
	$doc->load($xsl_filename);
	
	$xsl->importStyleSheet($doc);
	$xsl->setParameter('', 'Port',$filtrar); 

	$doc->load($xml_filename);
	
	echo $xsl->transformToXML($doc);
?>