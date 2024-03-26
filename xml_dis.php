<?php
$xml = file_get_contents("xml_midsem.xml");
$xsl = file_get_contents("xml.xsl");

$doc = new DOMDocument();
$doc->loadXML($xml);

$xslt = new XSLTProcessor();
$xslt->importStyleSheet(new SimpleXMLElement($xsl));

echo $xslt->transformToXML($doc);
?>