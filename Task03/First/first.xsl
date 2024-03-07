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
							<th>Price</th>
						</tr>
						<xsl:for-each select="CATALOG/CD">
							<xsl:sort select="PRICE" data-type="number"/>
							<xsl:choose>
								<xsl:when test="PRICE &gt; 10">
									<tr style="background-color:black;color:#fff">
										<td>
											<xsl:value-of select="TITLE"/>
										</td>
										<td>
											<xsl:value-of select="ARTIST"/>
										</td>
										<td>
											<xsl:value-of select="PRICE"/>
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