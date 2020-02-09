<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/films">
    <html lang="fr">
        <head>
            <title>Films</title>
        </head>
        <body>
            <h1>Liste des films</h1>
            <xsl:apply-templates select="film"/>
        </body>
    </html>
</xsl:template>

<xsl:template match="film">
    <table width="60%">
        <tr>
            <xsl:variable name="currentIdRes" select="@id_realisateur"/>
            <td colspan="2">
                <b><xsl:value-of select="titre"/></b>
                <i>(<xsl:apply-templates select="//realisateur[@id_realisateur = $currentIdRes]/prenom"/>,
                    <xsl:apply-templates select="//realisateur[@id_realisateur = $currentIdRes]/nom"/>)</i>
            </td>
        </tr>
        <tr>
            <td><xsl:apply-templates select="resume/image"/></td>
            <td><xsl:value-of select="resume/text"/></td>

            <td></td>
        </tr>
    </table>
    <hr/>
</xsl:template>

<xsl:template match="realisateur">
    <xsl:value-of select="prenom"/><xsl:text> </xsl:text><xsl:value-of select="nom"/>
</xsl:template>

<xsl:template match="resume/image">
    <img src="{@source}"/>
</xsl:template>

</xsl:stylesheet>