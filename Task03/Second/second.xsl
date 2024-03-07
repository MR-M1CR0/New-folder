<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<head>
				<title>Catalog</title>
			</head>
			<body>
				<table border="3">
					<tbody>
						<tr>
							<th>Title</th>
							<th>Artist</th>
							<th>Country</th>
							<th>Company</th>
							<th>Price</th>
							<th>Year</th>
						</tr>
						<xsl:for-each select="CATALOG/CD">
							<xsl:sort select="PRICE" data-type="number" order="descending"/>
							<xsl:choose>
								<xsl:when test="TITLE">
									<tr style="background-color:black;color:#fff">
										<td>
											<xsl:value-of select="TITLE"/>
										</td>
										<td>
											<xsl:value-of select="ARTIST"/>
										</td>
										<td>
											<xsl:value-of select="COUNTRY"/>
										</td>
										<td>
											<xsl:value-of select="COMPANY"/>
										</td>
										<td>
											<xsl:value-of select="PRICE"/>
										</td>
										<td>
											<xsl:value-of select="YEAR"/>
										</td>
									</tr>
								</xsl:when>
							</xsl:choose>
						</xsl:for-each>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>