<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    
    <li>
        
        
        <form action="{$siteroot}search" method="get" style="margin-top: 0px;">
            <input size="20" type="text" name="q" value="Search this site"
                onfocus="this.value='';this.select();"/>
            <input value="search" type="submit" style="padding: 0px; "/>
            <input type="hidden" name="start" value="0"/>
            <input type="hidden" name="rows" value="10"/>
            <br/>
            <!-- edit -->
            <!--<a href="searchHelp.html" class="help">Search Help</a>-->
        </form>
    </li>
    
    
    
    

</xsl:stylesheet>
