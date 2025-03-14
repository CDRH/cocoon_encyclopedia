<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0">

  <xsl:output method="xhtml" indent="yes" encoding="UTF-8"/>

  <xsl:param name="pagetype">unset</xsl:param>
  <xsl:param name="pageprefix">unset</xsl:param>
  <xsl:param name="imageid">unset</xsl:param>t
  <xsl:param name="imagebase">unset</xsl:param>
  <xsl:param name="cLetter">unset</xsl:param>

  <xsl:include href="config.xsl"/>

  <xsl:template match="/">

    <html lang="en" class="no-js">
      <head profile="http://dublincore.org/documents/dcq-html/">

        <meta charset="utf-8"/>

        <title>
          <xsl:if test="//div1[1]/head[1]">
            <xsl:value-of select="//div1[1]/head[1]"/>
            <xsl:text> | </xsl:text>
            </xsl:if>
          Encyclopedia of the Great Plains
        </title>

        <!-- Place favicon.ico and apple-touch-icon.png in the root of your domain and delete these references -->
        <link rel="shortcut icon" href="/favicon.ico"/>
        <link rel="apple-touch-icon" href="/apple-touch-icon.png"/>

        <!-- CSS Reset -->
        <link rel="stylesheet" href="{$siteroot}stylesheets/css/reset.css"/>

        <!-- CSS : implied media="all" -->
        <link rel="stylesheet" href="{$siteroot}stylesheets/css/style.css"/>

      </head>
      
      <body class="{$pagetype}">

          <header>
            <a class="sr-only sr-only-focusable" href="#main_content">Skip to main content</a>
            <div class="static-banner-wrapper">
              <div class="static-banner">
                <p>This version of the website was created in 2025. See the <a href="/encyclopedia/info.html">Site Information Page</a> for contact information, data downloads, and other details.</p>
              </div>
            </div>
            <div class="all">
                <div class="header">
                <div class="site-title h1">
                  <a href="{$siteroot}">
                    <span class="titleFirst">Encyclopedia of the</span>
                    <span class="titleSecond">Great Plains</span>
                  </a>
                  
                </div>
                <div class="h2">
                  <a href="{$siteroot}">David J. Wishart, Editor</a>
                </div>
    
    
              </div>
    
              <!-- /header -->
    
    
              <nav class="navigation" aria-label="Main Menu">
                <ul class="main-menu">
                  <li class="home">
                    <a href="{$siteroot}">Home</a>
                  </li>
                  <li class="intro">
                    <a href="{$siteroot}intro.html">Introduction</a>
                  </li>
                  <li class="intro">
                    <a href="{$siteroot}contents.html">Contents</a>
                  </li>
                  <li class="birds">
                    <a href="{$siteroot}contributors">Contributors</a>
                  </li>
                  <li class="about">
                    <a href="{$siteroot}about.html">About</a>
                  </li>
                  <li class="search">
                    <a href="{$siteroot}search.html">Search</a>
                  </li>
    
                </ul>
              </nav>
              <!-- /navigation -->
            </div>
          </header>

          <main id="main_content">
            <div class="all">
                <div class="content">

                <div class="main">
                  <div class="surround">
                    <!-- HOME  -->
    
                    <xsl:if test="$pagetype = 'home'">
                      <h1 class="sr-only">Home</h1>
                      <xsl:call-template name="home"/>
                    </xsl:if>
    
                    <!-- CONTENTS  -->
    
                    <xsl:if test="$pagetype = 'contents'">
                      <xsl:call-template name="contents"/>
                    </xsl:if>
    
                    <!--  CONTRIBUTORS -->
    
                    <xsl:if test="$pagetype = 'contributors'">
                      <xsl:call-template name="contributors"/>
                    </xsl:if>
    
                    <!-- Introduction -->
    
                    <xsl:if test="$pagetype = 'intro'">
                      <xsl:call-template name="intro"/>
                    </xsl:if>
    
                    <!--  SEARCHRESULTS -->
    
                    <xsl:if test="$pagetype = 'searchresults'">
                      <xsl:call-template name="searchresults"/>
                    </xsl:if>
    
                    <!--  ABOUT -->
    
                    <xsl:if test="$pagetype = 'about'">
                      <xsl:call-template name="about"/>
                    </xsl:if>
                    
                    <!--  ABOUT -->
                    
                    <xsl:if test="$pagetype = 'credits'">
                      <xsl:call-template name="credits"/>
                    </xsl:if>
    
                    <!--  DOCUMENTS -->
    
                    <xsl:if test="$pagetype = 'doc'">
                      <xsl:call-template name="doc"/>
                    </xsl:if>
    
                    <!--  IMAGES -->
    
                    <xsl:if test="$pagetype = 'image'">
                      <xsl:call-template name="image"/>
                    </xsl:if>
    
                    <!--  ERROR - 404 -->
    
                    <xsl:if test="$pagetype = 'error'">
                      <p>This page does not exist!</p>
                      <p>Please use the navigation or the search at left to find what you are looking
                        for.</p>
                    </xsl:if>
    
                  </div>
                  <!-- /main -->
    
                </div>
                <!-- /surround -->
    
              </div>
              <!-- /content -->
            </div>
         </main>

          <footer>
            <div class="all">
                <div id="footer">
                <p>&#169; 2011 University of Nebraska&#8211;Lincoln<br/>Images are
                  &#169; their respective owners.<br/>
                  <a href="{$siteroot}credits.html">Image credits</a><br/></p>
                <img src="{$siteroot}imgs/unl_logo.png" alt="University of Nebraska-Lincoln Logo"/>
              </div>
              <!-- /footer -->
            </div>
          </footer>


        <!--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"><xsl:text> </xsl:text></script>
        <script type="text/javascript" src="{$siteroot}js/jQuery.jPlayer.2.0.0/jquery.jplayer.min.js"><xsl:text> </xsl:text></script>
        <script type="text/javascript" src="{$siteroot}js/plugins.js"><xsl:text> </xsl:text></script>
-->
      </body>
    </html>

  </xsl:template>




  <!-- ==========================================
    General Templates
    ==========================================-->



  <xsl:template match="head">
    <xsl:choose>
      <xsl:when test="head[1]">
        <h1 class="h2">
          <xsl:apply-templates/>
        </h1>
      </xsl:when>
      <xsl:otherwise>
        <h2 class="h3">
          <xsl:apply-templates/>
        </h2>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>



  <xsl:template match="text/body/div1/head[1]">
    <h1 class="h2">
      <xsl:apply-templates/>
    </h1>
  </xsl:template>


  <xsl:template match="lg[@type=poem]">
    <div class="poem">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

  <xsl:template match="l">
    <xsl:choose>
      <xsl:when test="@rend='indent'">
        <p class="indent">
          <xsl:apply-templates/>
        </p>
      </xsl:when>
      <xsl:when test="@rend='indent2'">
        <p class="indent2">
          <xsl:apply-templates/>
        </p>
      </xsl:when>
      <xsl:otherwise>
        <p>
          <xsl:apply-templates/>
        </p>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="lg">
    <xsl:choose>
      <xsl:when test="@type='poem'">
        <div class="linegroup poem">
          <xsl:apply-templates/>
        </div>
      </xsl:when>
      <xsl:otherwise>
        <div class="linegroup">
          <xsl:apply-templates/>
        </div>
      </xsl:otherwise>
    </xsl:choose>



  </xsl:template>

  <xsl:template match="div1/bibl">
    <p class="bibl">
      <xsl:apply-templates/>
    </p>
  </xsl:template>

  <xsl:template match="title">
    <xsl:choose>
      <xsl:when test="@level='j'">
        <em>
          <xsl:apply-templates/>
        </em>
      </xsl:when>
      <xsl:when test="@level='m'">
        <em>
          <xsl:apply-templates/>
        </em>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates/>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="note">
    <p class="bibl">
      <xsl:apply-templates/>
    </p>
  </xsl:template>
 

  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>


  <xsl:template match="sic">
    <xsl:apply-templates/>
    <xsl:text> [sic] </xsl:text>
  </xsl:template>

  <xsl:template match="gap[@reason='sampling']"> [&#133;] </xsl:template>

  <xsl:template match="emph | hi[@rend='italic'] | hi[@rend='italics'] | foreign">
    <em>
      <xsl:apply-templates/>
    </em>
  </xsl:template>
  
  <xsl:template match="closer/signed">
    <p class="signature"><em><xsl:apply-templates/></em></p>
  </xsl:template>
  
  <xsl:template match="quote">
    <p class="quote"><xsl:apply-templates/></p>
  </xsl:template>
  
  <xsl:template match="epigraph/cit/bibl">
    <p class="quoteBibl"><xsl:apply-templates/></p>
  </xsl:template>
  

  <xsl:template match="list">
    <div class="h4">
      <xsl:value-of select="head"/>
    </div>
    <ul>
      <xsl:apply-templates select="item"/>
    </ul>
  </xsl:template>

  <xsl:template match="item">
    <li>
      <xsl:apply-templates/>
    </li>
  </xsl:template>

  <xsl:template match="ref">
    <xsl:choose>
      <xsl:when test="@type='credit'">
        <a>
          <xsl:attribute name="href">
            <xsl:text>doc/</xsl:text>
            <xsl:value-of select="@n"/>
          </xsl:attribute>
          <xsl:apply-templates/>
        </a>
      </xsl:when>
      <xsl:when test="@target">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="@target"/>
          </xsl:attribute>
          <xsl:apply-templates/>
        </a>
      </xsl:when>
      <xsl:otherwise>
        <a>
        <xsl:attribute name="href">
          <xsl:value-of select="@n"/>
        </xsl:attribute>
        <xsl:apply-templates/>
      </a>
      </xsl:otherwise>
    </xsl:choose>
    
  </xsl:template>

  <xsl:template match="figure">
    <xsl:choose>
      <xsl:when test="@type='video'">
        <video width="320" height="240" controls="true">
          <source src="{$siteroot}figures/video/{@n}_sm.mp4" type="video/mp4"/>
          <source src="{$siteroot}figures/video/{@n}.oggtheora.ogv" type="video/ogg"/>
              Your browser does not support the video tag.
        </video>
        <!--<xsl:value-of select="@n"></xsl:value-of>-->
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="url">
          <xsl:value-of select="$siteroot"/>
          <xsl:choose>
            <xsl:when test="$pagetype = 'image'">
              <xsl:text>doc/</xsl:text>
              <xsl:value-of select="$imagebase"/>
            </xsl:when>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="$pagetype = 'doc'">
              <xsl:text>images/</xsl:text>
              <xsl:value-of select="@n"/>
            </xsl:when>
          </xsl:choose>
        </xsl:variable>
        
        <xsl:choose>
          <xsl:when test="@rend='granted'">
            <xsl:choose>
              <xsl:when test="@type = 'noclick'">
                <span class="figures">
                  <img>
                    <xsl:attribute name="src">
                      <xsl:value-of select="$siteroot"/>
                      <xsl:text>figures/</xsl:text>
                      <xsl:choose>
                        <xsl:when test="$pagetype = 'image'">
                          <xsl:text>800/</xsl:text>
                          <xsl:value-of select="$imageid"/>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:text>300/</xsl:text>
                          <xsl:value-of select="@n"/>
                        </xsl:otherwise>
                      </xsl:choose>
                      <xsl:text>.jpg</xsl:text>
                    </xsl:attribute>
                     <xsl:attribute name="alt">
                        <p><xsl:value-of select="translate(., '&quot;', '')" /></p>
                     </xsl:attribute>
                  </img>
                  <p><xsl:apply-templates/></p>
                </span>
              </xsl:when>
              <xsl:otherwise>
                <span class="figures">
                  <a>
                    <xsl:attribute name="href">
                      <xsl:value-of select="$url"/>
                      <xsl:if test="$pagetype = 'image'">
                        <xsl:text>#</xsl:text>
                        <xsl:value-of select="@n"/>
                      </xsl:if>
                    </xsl:attribute>
                    <xsl:attribute name="name">
                      <xsl:value-of select="@n"/>
                    </xsl:attribute>
                    
                    <img>
                      <xsl:attribute name="src">
                        <xsl:value-of select="$siteroot"/>
                        <xsl:text>figures/</xsl:text>
                        <xsl:choose>
                          <xsl:when test="$pagetype = 'image'">
                            <xsl:text>800/</xsl:text>
                            <xsl:value-of select="$imageid"/>
                          </xsl:when>
                          <xsl:otherwise>
                            <xsl:text>300/</xsl:text>
                            <xsl:value-of select="@n"/>
                          </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text>.jpg</xsl:text>
                      </xsl:attribute>
                     <xsl:attribute name="alt">
                        <p><xsl:value-of select="translate(., '&quot;', '')" /></p>
                     </xsl:attribute>
                    </img>
                    
                  </a>
                  <p>
                    <xsl:apply-templates/>
                  </p>
                  <xsl:choose>
                    <xsl:when test="$pagetype = 'image'">
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="$url"/>
                          <xsl:text>#</xsl:text>
                          <xsl:value-of select="@n"/>
                        </xsl:attribute>
                        <xsl:text>Back to entry</xsl:text>
                      </a>
                      <p>
                        <a>
                          <xsl:attribute name="href"><xsl:text>../credits.html</xsl:text></xsl:attribute>
                          <xsl:text>Image Credits</xsl:text>
                        </a>
                      </p>
                      
                    </xsl:when>
                    <xsl:when test="$pagetype = 'doc'">
                      <a>
                        <xsl:attribute name="href">
                          <xsl:value-of select="$url"/>
                        </xsl:attribute>
                        <xsl:text>View larger</xsl:text>
                      </a>
                    </xsl:when>
                  </xsl:choose>
                  
                </span>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise><!-- nothing happens --></xsl:otherwise>
        </xsl:choose>
        
      </xsl:otherwise>
    </xsl:choose>
    
    
  </xsl:template>


  <xsl:template match="table">
    <table>
      <xsl:apply-templates/>
    </table>
  </xsl:template>
  
  <xsl:template match="row">
    <tr>
      <xsl:apply-templates/>
    </tr>
  </xsl:template>
  
  <xsl:template match="cell">
    <td>
      <xsl:apply-templates/>
    </td>
  </xsl:template>
  


  <!-- ==========================================
     Page templates, move into another file later
     ==========================================-->
  <xsl:template name="home">
    <div class="introtext"><xsl:apply-templates select="//text"/></div>

    <xsl:apply-templates select="document('../../xml/egp.000.contents.xml')//text/body/div1/list"/>
  </xsl:template>

  <xsl:template name="intro">
    <xsl:apply-templates select="//text"/>
  </xsl:template>

  <xsl:template name="contents">
    <xsl:apply-templates select="//text"/>
  </xsl:template>

  <xsl:template name="contributors">
    <xsl:apply-templates select="//text"/>
    <nav aria-label="Lists of contributors by last name">
<ul class="alphaList {$cLetter}">
      <li class="a"><a href="{$siteroot}contributors/a">a</a></li>
      <li class="b"><a href="{$siteroot}contributors/b">b</a></li>
      <li class="c"><a href="{$siteroot}contributors/c">c</a></li>
      <li class="d"><a href="{$siteroot}contributors/d">d</a></li>
      <li class="e"><a href="{$siteroot}contributors/e">e</a></li>
      <li class="f"><a href="{$siteroot}contributors/f">f</a></li>
      <li class="g"><a href="{$siteroot}contributors/g">g</a></li>
      <li class="h"><a href="{$siteroot}contributors/h">j</a></li>
      <li class="i"><a href="{$siteroot}contributors/i">i</a></li>
      <li class="j"><a href="{$siteroot}contributors/j">j</a></li>
      <li class="k"><a href="{$siteroot}contributors/k">k</a></li>
      <li class="l"><a href="{$siteroot}contributors/l">l</a></li>
      <li class="m"><a href="{$siteroot}contributors/m">m</a></li>
      <li class="n"><a href="{$siteroot}contributors/n">n</a></li>
      <li class="o"><a href="{$siteroot}contributors/o">o</a></li>
      <li class="p"><a href="{$siteroot}contributors/p">p</a></li>
      <li class="q"><a href="{$siteroot}contributors/q">q</a></li>
      <li class="r"><a href="{$siteroot}contributors/rm">r</a></li>
      <li class="s"><a href="{$siteroot}contributors/s">s</a></li>
      <li class="t"><a href="{$siteroot}contributors/t">t</a></li>
      <li class="u"><a href="{$siteroot}contributors/u">u</a></li>
      <li class="v"><a href="{$siteroot}contributors/v">v</a></li>
      <li class="w"><a href="{$siteroot}contributors/w">w</a></li>
      <li class="x"><a href="{$siteroot}contributors/x">x</a></li>
      <li class="y"><a href="{$siteroot}contributors/y">y</a></li>
      <li class="z"><a href="{$siteroot}contributors/z">z</a></li>
    </ul>
   
    </nav>
    <ul class="contributors">
      <xsl:for-each-group select="//arr[@name='author']/str" group-by="." xpath-default-namespace="">
        
        <xsl:sort />
        <!-- The translate bit below transforms the unicode character &#220; into 'U' - there is one author's name that begins with this letter. 
             Pretty clunky solution, but works for this project :/ -->
        <xsl:if test="(starts-with(upper-case(translate(., '&#220;', 'U' )), upper-case($cLetter)))">
        
          <li>
            <xsl:value-of select="."/>
          <ul>
            <xsl:for-each select="current-group()">

              <li>
                <a>
                  <xsl:attribute name="href">
                    <xsl:value-of select="$siteroot"/>
                    <xsl:text>doc/</xsl:text>
                    <xsl:value-of select="../../str[@name='id']"/>
                    <xsl:text>.xml</xsl:text>
                  </xsl:attribute>
                  <xsl:value-of select="../../str[@name='titleMain']"/>
                </a>
              </li>

            </xsl:for-each>
          </ul>
          </li>
          </xsl:if>
      </xsl:for-each-group>
    </ul>
  </xsl:template>

  <xsl:template name="about">
    <xsl:apply-templates select="//text"/>
  </xsl:template>
  
  <xsl:template name="credits">
    <xsl:apply-templates select="//text"/>
  </xsl:template>


  <xsl:template name="doc">

    <div class="bodycopy">
      <xsl:apply-templates select="//text"/>
    </div>
    <!-- /bodycopy -->
    <xsl:variable name="docURL">
      <xsl:text>../../xml/</xsl:text>
      <xsl:value-of select="$pageprefix"/>
      <xsl:text>.000.xml</xsl:text>
    </xsl:variable>

    <xsl:variable name="docID">
      <xsl:value-of select="/TEI/@xml:id"/>
    </xsl:variable>
    <xsl:if test="not(contains($docID,'000'))">
      <p>
        <xsl:text>Previous: </xsl:text>
        <xsl:for-each select="document($docURL)//ref[@n=$docID]">
          <xsl:apply-templates select="preceding::ref[not(child::hi[@rend='smallcaps'])][1]"/>
        </xsl:for-each>
        <xsl:text> | </xsl:text>
        <a href="{$pageprefix}.000">Contents</a>
        <xsl:text> | Next: </xsl:text>
        <xsl:for-each select="document($docURL)//item/ref[@n=$docID]">
          <!-- Match the 1st following ref which does not have a preceding
             aibling of 'hi' -->
          <xsl:apply-templates select="following::ref[not(child::hi[@rend='smallcaps'])][1]"/>
        </xsl:for-each>
      </p>
    </xsl:if>
    <p>XML: <a href="{$siteroot}/doc/source/{$docID}.xml"><xsl:value-of select="$docID"/><xsl:text>.xml</xsl:text></a></p>
  </xsl:template>


  <xsl:template name="image">
    <xsl:apply-templates select="//figure[@n=$imageid]"/>
  </xsl:template>
  

  <xsl:template name="searchresults" xpath-default-namespace="">
    <xsl:variable name="rows" select="//str[@name='rows']"/>
    <xsl:variable name="searchTerm" select="substring(//str[@name='q'],2,string-length(//str[@name='q'])-2)"/>
    <xsl:variable name="start" select="//str[@name='start']"/>
    <xsl:variable name="numFound" select="//result/@numFound"/>
    <h1 class="h2">Search Results</h1>
    <p>Your search for <strong>
        <xsl:value-of select="$searchTerm"/>
      </strong> returned <strong>
        <xsl:value-of select="$numFound"/>
      </strong> results.</p>
    <p>Results <xsl:value-of select="$start+1"/> through <xsl:choose>
        <xsl:when test="$numFound &gt; $start+$rows">
          <xsl:value-of select="$start+$rows"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$numFound"/>
        </xsl:otherwise>
      </xsl:choose> shown.</p>
    <xsl:choose>
      <xsl:when test="$start &lt;= 0"> previous </xsl:when>
      <xsl:otherwise>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="$siteroot"/>
            <xsl:text>search/?q=</xsl:text>
            <xsl:value-of select="$searchTerm"/>
            <xsl:text>&#38;start=</xsl:text>
            <xsl:value-of select="$start - $rows"/>
            <xsl:text>&#38;rows=</xsl:text>
            <xsl:value-of select="$rows"/>
            <xsl:text/>
          </xsl:attribute>previous </a>
      </xsl:otherwise>
    </xsl:choose> | <xsl:choose>
      <xsl:when test="($start + $rows) &gt;= $numFound"> next </xsl:when>
      <xsl:otherwise>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="$siteroot"/>
            <xsl:text>search/?q=</xsl:text>
            <xsl:value-of select="$searchTerm"/>
            <xsl:text>&#38;start=</xsl:text>
            <xsl:value-of select="$start + $rows"/>
            <xsl:text>&#38;rows=</xsl:text>
            <xsl:value-of select="$rows"/>
          </xsl:attribute>next </a>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:for-each select="//doc">
      <xsl:variable name="birdpagelink">
        <xsl:value-of select="str[@name='id']"/>
      </xsl:variable>
      <div class="searchResult">
        <h2 class="h3">
          <a href="{$siteroot}doc/{$birdpagelink}.xml">
            <xsl:value-of select="str[@name='titleMain']"/>
          </a>
        </h2>
        <xsl:for-each select="//lst[@name='highlighting']/lst[@name=$birdpagelink]/arr/str">
          <p><xsl:text>...</xsl:text>
            <xsl:analyze-string regex="[\s]" select="normalize-space(.)">
              <xsl:non-matching-substring>
                <xsl:choose>
                  <xsl:when
                    test="contains(.,'&lt;em&gt;') and contains(.,'&lt;/em&gt;')">
                    <b>
                      <xsl:value-of
                        select="replace(replace(.,'&lt;em&gt;',''),'&lt;/em&gt;','')"
                      />
                    </b>
                    <xsl:text> </xsl:text>
                  </xsl:when>
                  <xsl:otherwise>
                    <xsl:value-of select="."/>
                    <xsl:text> </xsl:text>
                  </xsl:otherwise>
                </xsl:choose>
              </xsl:non-matching-substring>
            </xsl:analyze-string>
          </p>
        </xsl:for-each>
      </div>
    </xsl:for-each>
    <xsl:choose>
      <xsl:when test="$start &lt;= 0"> previous </xsl:when>
      <xsl:otherwise>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="$siteroot"/>
            <xsl:text>search/?q=</xsl:text>
            <xsl:value-of select="$searchTerm"/>
            <xsl:text>&#38;start=</xsl:text>
            <xsl:value-of select="$start - $rows"/>
            <xsl:text>&#38;rows=</xsl:text>
            <xsl:value-of select="$rows"/>
            <xsl:text/>
          </xsl:attribute>previous </a>
      </xsl:otherwise>
    </xsl:choose> | <xsl:choose>
      <xsl:when test="($start + $rows) &gt;= $numFound"> next </xsl:when>
      <xsl:otherwise>
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="$siteroot"/>
            <xsl:text>search/?q=</xsl:text>
            <xsl:value-of select="$searchTerm"/>
            <xsl:text>&#38;start=</xsl:text>
            <xsl:value-of select="$start + $rows"/>
            <xsl:text>&#38;rows=</xsl:text>
            <xsl:value-of select="$rows"/>
          </xsl:attribute>next </a>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
