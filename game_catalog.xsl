<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
   <html>
   <body>
   <h2>My Favourite games</h2>
   <table border="1">
     <tr bgcolor="#a0a0a0">
       <th>Title</th>
       <th>Genre</th>
       <th>Country</th>
       <th>Company</th>
       <th>Price</th>
       <th>Year</th>
     </tr>
     <xsl:for-each select="catalog/game">
     <tr>
       <td><xsl:value-of select="title"/></td>
       <td><xsl:value-of select="genre"/></td>
       <td><xsl:value-of select="country"/></td>
       <td><xsl:value-of select="company"/></td>
       <xsl:choose>
        <xsl:when test="price">
          <td bgcolor="#507d5c">
            <xsl:value-of select="price"/>
          </td>
        </xsl:when>
        <xsl:otherwise>
        <td bgcolor="#80a089">
          <xsl:value-of select="price"/>
        </td>
        </xsl:otherwise>
       </xsl:choose>
       <!-- <td><xsl:value-of select="price"/></td> -->
       <td><xsl:value-of select="year"/></td>
     </tr>
     </xsl:for-each>
   </table>
   </body>
   </html>
</xsl:template>

</xsl:stylesheet> 
