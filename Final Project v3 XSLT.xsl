<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    
    <!--Ortiz, Sandy INFO 246 Fall 2015 Final Project v3 XSLT, 12/05/15-->
    <xsl:template match="/" >
        <xhtml xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Ortiz _<xsl:apply-templates select="//titleStmt/title"/></title>
                <style type="text/css">
                    /* HTML page, body, table, heading, table column and table row Style */
                    html	{ height:100%;background:#cc00ff;}
                    body	{ width:70em; margin:0 auto; border:2px solid black; border-top:2px; padding:2em; position: relative;}
                    table   { width:100%;}                     
                    h1 {text-align:center;}
                    h2 {text-align:center;}
                    h3 {text-align:left;}
                    td {width: 50%; padding: 5em;}
                    tr {width: 50%; padding: 5em; }
                    
                    /* Create alternate table row colors, must call class in HTML table row(tr) */
                    body {
                    border-left: 10px solid #900; 
                    border-right: 10px solid #900; 
                    }
                    tr.d0 td {
                    background-color: #CC9999; color: black; padding: 5em;
                    }
                    tr.d1 td {
                    background-color: #9999CC; color: black; padding: 5em;
                    }
                </style>
            </head>
            <body>
                <h1><xsl:apply-templates select="//titleStmt/title"/></h1>
                <table> 
                    <tr class="d0"><td><xsl:apply-templates select="/TEI/teiHeader/fileDesc"/></td></tr>
                    <tr class="d1"><td><xsl:apply-templates select="/TEI/text/front"/></td></tr>
                    <tr class="d0"><td><xsl:apply-templates select="/TEI/text/body"/></td></tr>
                    <tr class="d1"><td><xsl:apply-templates select="/TEI/text/back"/></td></tr>
                </table>
            </body>
        </xhtml>
    </xsl:template>

<!--Output Document title-->
<xsl:template match="//titleStmt/title">
    <xsl:value-of select="."/>
</xsl:template>
    
<!--Output TEI Header-->
<xsl:template match="/TEI/teiHeader/fileDesc">
      <xsl:for-each select="child::*">
           <p><xsl:value-of select="."/>  </p> 
      </xsl:for-each>  
      <xsl:for-each select="following-sibling::*">
            <p><xsl:value-of select="."/>  </p>       
      </xsl:for-each>
</xsl:template>

<!--Output TEI frontmatter-->
<xsl:template match="/TEI/text/front">
    <xsl:for-each select="child::*">
    <p><xsl:value-of select="."/></p>
    </xsl:for-each>
</xsl:template>

<!--Output TEI body text-->
<xsl:template match="/TEI/text/body">
    <xsl:for-each select="descendant::*">
    <p><xsl:value-of select="text()"/></p>  
    </xsl:for-each>
</xsl:template>

<!--Output TEI backmatter-->
<xsl:template match="/TEI/text/back"> 
    <p><xsl:value-of select="."/></p>
</xsl:template>
    
</xsl:stylesheet>


