<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        /*
         * 2. apply-templates sans attribut ne change rien, ça met le template par défaut
         * 3. remplacer apply-templates par uniquement Hello World ! marque seulement Hello World !
         * note : quand on parle de noeud racine = "\" uniquement, autrement = "\nomRacine"
         */
        Hello World !
    </xsl:template>

</xsl:stylesheet>