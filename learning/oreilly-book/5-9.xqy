xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
<xhtml:html xmlns:xhtml="http://www.w3.org/1999/xhtml">
  <xhtml:h1 class="itemHdr">Product Catalog</xhtml:h1>
  <xhtml:ul>{
    for $prod in doc("catalog.xml")/catalog/product
    return <xhtml:li class="{$prod/@dept}">number: {
      data($prod/number)}</xhtml:li>
    }</xhtml:ul>
  }
</xhtml:html>
