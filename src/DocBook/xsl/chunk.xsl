<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ng="http://docbook.org/docbook-ng"
	xmlns:db="http://docbook.org/ns/docbook"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:exsl="http://exslt.org/common"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="db ng exsl"
	version="1.0">
	
	<xsl:import href="docbook-xsl/html/chunk.xsl"/>
  	  	
  	<xsl:param name="use.extensions">0</xsl:param>
  	<xsl:param name="tablecolumns.extension">0</xsl:param>
  	<xsl:param name="linenumbering.extension" select="1"></xsl:param>
  	<xsl:param name="img.src.path">./images/</xsl:param>
  	
  	<xsl:param name="draft.mode">0</xsl:param>
  	
  	<xsl:param name="base.dir">./build/</xsl:param>
  	
  	<xsl:param name="admon.graphics">1</xsl:param>
  	<xsl:param name="admon.graphics.path">images/</xsl:param>
 	<xsl:param name="admon.graphics.extension">.svg</xsl:param> 
 	
 	<xsl:param name="callout.graphics">1</xsl:param>
 	<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
 	<xsl:param name="callout.graphics.extension">.svg</xsl:param>
 	
 	<xsl:param name="navig.graphics">1</xsl:param>
 	<xsl:param name="navig.graphics">images/</xsl:param>
 	 <xsl:param name="navig.graphics.extension">.svg</xsl:param>
 	
 	<xsl:param name="glossary.sort">1</xsl:param>
 	<xsl:param name="bibliography.numbered">1</xsl:param>
	<xsl:param name="html.stylesheet" select="'css/docbook.css'"/>
	
	<xsl:param name="chunk.first.sections">0</xsl:param>
	<xsl:param name="chunk.section.depth">2</xsl:param>
	
	<xsl:param name="use.id.as.filename">1</xsl:param>
	<xsl:param name="section.autolabel">0</xsl:param>
	<xsl:param name="toc.max.depth"  select="1"/>
	
	<xsl:param name="profile.revisionflag">1</xsl:param>
	
	<xsl:template name="user.header.content">
		<div id="header">
			<h1>Open FPV Book</h1>
		</div>
  	</xsl:template>

  	<xsl:template name="user.footer.content">
    	<p id="file_create_date" class="info">Created: <xsl:value-of select="date:date-time()" /></p>
	</xsl:template>
		
	<xsl:template match="article/info/date">
		<p class="date"><xsl:value-of select="."/></p>
	</xsl:template>
	
	<xsl:param name="generate.toc">
appendix  nop
article/appendix  nop
article   title
book      toc,title
chapter   title
part      toc,title
preface   nop
qandadiv  nop
qandaset  nop
reference toc,title
bibliography toc,title
sect1     nop
sect2     nop
sect3     nop
sect4     nop
sect5     nop
section   nop
set       toc,title</xsl:param>
	
</xsl:stylesheet>