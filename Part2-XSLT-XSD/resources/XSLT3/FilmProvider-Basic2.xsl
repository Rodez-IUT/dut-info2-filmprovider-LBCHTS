<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/films">
        <html>
            <head>
                <title>Films</title>
            </head>

            <body>
                <h1>Films</h1>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Titre</th>
                            <th>Résumé</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="film"/>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="film">
        <tr>
            <td><xsl:value-of select="titre"/></td>
            <td><xsl:value-of select="resume/text"/></td>
        </tr>
    </xsl:template>


</xsl:stylesheet>