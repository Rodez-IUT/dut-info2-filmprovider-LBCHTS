<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/films">
    <html lang="fr">
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
                        <th>Réalisé par</th>
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
        <xsl:variable name="currentIdRes" select="@id_realisateur"/>
        <td><xsl:apply-templates select="//realisateur[@id_realisateur = $currentIdRes]"/></td>
    </tr>
</xsl:template>

<xsl:template match="realisateur">
    <xsl:value-of select="prenom"/><xsl:text> </xsl:text><xsl:value-of select="nom"/>
</xsl:template>

</xsl:stylesheet>