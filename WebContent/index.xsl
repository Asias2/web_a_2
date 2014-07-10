<?xml version="1.0" encoding="UTF-8"?>
	
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
