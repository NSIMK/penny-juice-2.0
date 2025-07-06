<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
    <html>
	<head>
        <title>Penny Juice</title>
      </head>
	<body style="background-color: #FCAB56;">
    <h1>Penny Juice Product List</h1>
	
      <table border="3">
        <tr bgcolor="Tomato">
          <th>Product Name</th>
          <th>Product Description</th>
	      <th>Price 1Litre</th>
	      <th>Price 500ml</th>
        </tr>

        <xsl:for-each select="products/details">
          <tr>
              <td><xsl:value-of select="productname"/></td>
              <td><xsl:value-of select="description"/></td>
	          <td><xsl:value-of select="size1"/></td>
	          <td><xsl:value-of select="size2"/></td>
          </tr>
	    </xsl:for-each>
     </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
