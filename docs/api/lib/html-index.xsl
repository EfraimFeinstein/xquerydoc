<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
xmlns="http://www.w3.org/1999/xhtml"
xmlns:doc="http://www.xqdoc.org/1.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fn="http://www.w3.org/2005/02/xpath-functions"
xmlns:c="http://www.w3.org/ns/xproc-step"
exclude-result-prefixes="xs doc fn"
version="2.0">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>
<xsl:strip-space elements="*"/>

<xsl:param name="source" as="xs:string"/>
  <!-- generate module html //-->
  <xsl:template match="/">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="Generator" content="xquerydoc - https://github.com/xquery/xquerydoc" />
        <meta http-equiv="Authors" content="Copyright 2011 - John Snelson, James Fuller" />

	<title>xqDoc - </title>
        <style type="text/css">
          body {
          font-family: Helvetica;
          padding: 0.5em  1em;
          }
          pre {
          font-family: Inconsolata, Consolas, monospace;
          }
          ol.results {
          padding-left: 0;
          }
          .footer {
          text-align:right;
          border-top: solid 4px;
          padding: 0.25em 0.5em;
          font-size: 85%;
          color: #999;
          }
          li.result {
          list-style-position: inside;
          list-style: none;
          height:140px;
          }
          h2 {
          display: inline-block;
          margin: 0;
          }

          h2 a,
          .result h3 a {
          text-decoration: inherit;
          color: inherit;
          }
          h3{
	  font-size: 140%;
	  background-color: #aaa;
	  border-bottom: 1px solid #000;
	  width: 100%;
	  }
          h4{
	  font-size: 100%;
	  background-color: #ddd;
	  width: 90%;
	  }

          .namespace {
          color: #999;
          }
          .namespace:before {
          content: "{";
          }
          .namespace:after {
          content: "}";
          }
          table{
          width:75%;
          float:right;
          }
          td {
          height:100px;
          width:50%;
          vertical-align:text-top;
          }
        </style>

	<script src="lib/prettify.js"
                type="lib/javascript">&#160; </script>
	<script src="lib/lang-xq.js"
                type="text/javascript">&#160; </script>
	<link rel="stylesheet" type="text/css" href="lib/prettify.css">&#160;</link>
      </head>
      <body class="home">
	<div id="main">
          <h2>XQuery API Documentation</h2>

          <ul>
          <xsl:apply-templates select="//*:file"/>
          </ul>

          <br/>
          <div class="footer"><p
                                style="text-align:right"><i><xsl:value-of
                                select="()"/></i> |
          generated by xquerydoc <a
                                  href="https://github.com/xquery/xquerydoc"
                                  target="xquerydoc">https://github.com/xquery/xquerydoc</a></p></div>
        </div>
	<script type="application/javascript">
	  window.onload = function(){ prettyPrint(); }
	</script>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="*:file">
    <li><a href="{@name}.html"><xsl:value-of select="@name"/></a></li>
  </xsl:template>

</xsl:stylesheet>