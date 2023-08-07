<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:ng="http://docbook.org/docbook-ng"
	xmlns:db="http://docbook.org/ns/docbook"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:exsl="http://exslt.org/common"
	xmlns="http://www.w3.org/1999/xhtml"
	exclude-result-prefixes="db ng exsl"
	version="1.0">
	
	<xsl:import href="docbook-xsl/html/docbook.xsl"/>
  	
  	<xsl:param name="draft.mode">No</xsl:param>
	<xsl:param name="profile.revisionflag">1</xsl:param>
  	<xsl:param name="section.autolabel">1</xsl:param>
  	<xsl:param name="toc.max.depth"  select="6"/>
  	<xsl:param name="generate.toc">
appendix  nop
article/appendix  nop
article   nop
book      toc,title,figure,table,example,equation
chapter   nop
part      nop
preface   nop
qandadiv  nop
qandaset  nop
reference nop
sect1     nop
sect2     nop
sect3     nop
sect4     nop
sect5     nop
section   nop
set       toc,title</xsl:param>
</xsl:stylesheet>