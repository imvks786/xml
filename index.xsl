<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
  <body>
    <h2>Latest Games</h2>
    <table>
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Game Size</th>
		<th>Price</th>
		<th>Requirements</th>
      </tr>
      <xsl:for-each select="gamestore/plateform/game/gamedetail">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="size"/></td>
		  <td>Rs. <xsl:value-of select="price"/></td>
		  <td><xsl:value-of select="requirements"/></td>
        </tr>
      </xsl:for-each>
    </table>
	<style>
		body{
			font-family: Helvetica, sans-serif;
			text-align: center;
		}
		table{
			border:1px solid black;
		}
		td{
			font-size:20px;
			padding: 8px 8px;
		}
		th{
			font-size:20px;
			text-align: center;
			background-color:gray;
			color:White;
		}
	</style>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>