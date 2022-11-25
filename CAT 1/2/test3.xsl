<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
    <body>
        <header style="background-color:powderblue;padding:4px;text-align:center;">
            <h1>STUDENT MANAGEMENT SYSTEM</h1>
        
        </header>
        <table border="1">
            <tr bgcolor="green">
                <th>NAME</th>
                <th>COURSE</th>
                <th>SEMESTER</th>
                <th>SUB1</th>
                <th>SUB2</th>
                <th>SUB3</th>
                <th>TOTAL</th>
                <th>AVG</th>
            </tr>
            <xsl:for-each select="college/student">
            <xsl:if test="grade &lt; 70">
                <tr>
                    <td><xsl:value-of select="Grade"/></td>
                </tr>
            </xsl:if>

        <tr>
            <td><xsl:value-of select="Stu-name"/></td>
            <td><xsl:value-of select="Stu-Course"/></td>
            <td><xsl:value-of select="Stu-Sem"/></td>
            <td><xsl:value-of select="Stu-Sub1"/></td>
            <td><xsl:value-of select="Stu-Sub2"/></td>
            <td><xsl:value-of select="Stu-Sub3"/></td>
            <td><xsl:value-of select="Stu-Total"/></td>
            <td><xsl:value-of select="Stu-Avg"/></td>

        </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>