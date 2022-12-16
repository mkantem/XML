<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title> Entreprise </title>
            </head>
            <body>
                <h2> Les agents </h2>
                
                <xsl:for-each select="entreprise/agent">
                    <ul>
                        <li> Matricule: <xsl:value-of select="matricule"/></li>
                        <li> Type: <xsl:value-of select="@type"/></li>
                    </ul>
                    
                    <table border="1" width="75%">
                        <tr>
                            <th>Code</th><th>Titre</th><th>Salaire</th><th>Actif</th>
                        </tr>
                        <xsl:for-each select="postes/poste">
                            <tr>
                                <td> <xsl:value-of select="@code"/></td>
                                <td> <xsl:value-of select="@titre"/></td>
                                <td> <xsl:value-of select="@salaire"/> </td>
                                <td> <xsl:value-of select="@enActivite"/></td> 
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
                <ol>
                    <li> Nombre d'agents: <xsl:value-of select="count(entreprise/agent)"/> </li>
                    <li> Homme: <xsl:value-of select="count(entreprise/agent[@type='Homme'])"/>  </li>
                    <li> Femme: <xsl:value-of select="count(entreprise/agent[@type='Femme'])"/>  </li>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>