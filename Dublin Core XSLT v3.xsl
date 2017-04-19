<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <!--Ortiz, Sandy Dublin Core XSLT, 11/25/15-->
    <xsl:template match="/" >
        <xhtml xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Ortiz _Dublin Core XSLT</title>
                <style type="text/css">                  
                    html	{ height:100%;}
                    body	{ height:250%; width:70em; margin:0 auto; border:2px solid black; border-top:2px; padding:1em;position: relative;}
                    table   { width:100%; background:#cc00ff; } 
                    h1 {text-align:center; background:#0099ff;}
                    h2 {text-align:center; background: #cc3399; color:pink ;}
                    h3 {text-align:left; color:pink; }
                    td {padding: 1em; }
                    tr {padding: 1em; } 
                </style>
            </head>
            <body>
                <table>
                    <h2>Ortiz _Dublin Core XSLT</h2>
                    <tr><td><h3>Title</h3></td><td><strong><xsl:apply-templates select="//dc:title"/></strong></td></tr>
                    <tr><td><h3>Creator</h3></td><td><xsl:apply-templates select="//dc:creator"/></td></tr>                    
                    <tr><td><h3>Subject</h3></td><td><xsl:apply-templates select="//dc:subject"/></td></tr>
                    <tr><td><h3>Description</h3><td></td><xsl:apply-templates select="//dc:description"/></td></tr>
                    <tr><td><h3>Date</h3></td><td><xsl:apply-templates select="//dc:date"/></td></tr>
                    <tr><td><h3>Type</h3></td><td><xsl:apply-templates select="//dc:type"/></td></tr>
                    <tr><td><h3>Format</h3></td><td><xsl:apply-templates select="//dc:format"/></td></tr>
                    <tr><td><h3>Identifier</h3></td><td><xsl:apply-templates select="//dc:identifier"/></td></tr>
                    <tr><td><h3>Source</h3></td><td><xsl:apply-templates select="//dc:source"/></td></tr>
                    <tr><td><h3>Language</h3></td><td><xsl:apply-templates select="//dc:language"/></td></tr>
                    <tr><td><h3>Coverage</h3></td><td><xsl:apply-templates select="//dc:coverage"/></td></tr>
                    <tr><td><h3>Rights</h3></td><td><xsl:apply-templates select="//dc:rights"/></td></tr>
                    <tr><td><h3>Publisher</h3></td><td><xsl:apply-templates select="//dc:publisher"/></td></tr>
                    <tr><td><h3>Relation</h3></td><td><xsl:apply-templates select="//dc:relation"/></td></tr>
                </table>
            </body>
        </xhtml>
    </xsl:template>
    
    <xsl:template match="//dc:title">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:creator">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:subject">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:description">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:date">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:type">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:format">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:identifier">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:source">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:language">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:coverage">
        <p> <xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:rights">
        <p> <xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:publisher">
        <p> <xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:contributor">
      <p><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="//dc:relation">
        <p><xsl:value-of select="."/></p>
    </xsl:template>
    
</xsl:stylesheet>
