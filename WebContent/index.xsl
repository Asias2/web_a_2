<?xml version="1.0" encoding="UTF-8"?>
<!-- 
     Przykład obrazuje działanie przeglądarki jako procesora XSLT

     Przeglądarka po kliknięciu na dokument "kalendarium.xml" wyświetla dane XML 
     na różne sposoby w zależności od wskazanego w instrukcji "xml-stylesheet" 
     dokumentu XML arkusza stylów XSLT (lub braku wskazania na arkusz)
     
     Oba pliki transformat XSLT działają prawidłowo dla pliku XML zgodnego ze 
     schematem "kalendarium.xsd" 
     
     Uwagi:
	1. Zalecane przeglądarki: Opera i Firefox
	2. Przeglądarka IE nie rozpoznaje formatu SVG
	3. Przeglądarka Opera w przypadku braku arkusza stylów wyświetla jedynie 
	   zawartość tekstową dokumentu XML (nie wyświetla znaczników) 
-->
	
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes"/>

	<xsl:template match="kalendarium">
		<html>
			<head>
				<title>Kalendarium szkoleń</title>
			</head>
			<body>
				<h1>Kalendarium szkoleń</h1>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="grupa-szkolen">
		<h2>
			<xsl:value-of select="@nazwa"/>
		</h2>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="podgrupa-szkolen">
		<h3>
			<xsl:value-of select="@nazwa"/>
		</h3>
		<table border="1" cellspacing="2" cellpadding="2">
			<tbody>
				<tr bgcolor="#DDDDDD">
					<th>kod kursu</th>
					<th>nazwa</th>
					<th>czas trwania</th>
					<th>cena</th>
				</tr>
				<xsl:apply-templates/>
			</tbody>
		</table>
		<br/>
	</xsl:template>

	<xsl:template match="kurs">
		<tr>
			<td>
				<xsl:value-of select="kod-kursu"/>
			</td>
			<td>
				<xsl:value-of select="nazwa"/>
			</td>
			<td>
				<xsl:value-of select="czas-trwania"/>
			</td>
			<td>
				<xsl:value-of select="cena"/>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
