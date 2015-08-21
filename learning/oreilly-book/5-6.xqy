xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
<html>
<h1>Catalog</h1>
<p>A <i>huge</i> list of {count(doc("catalog.xml")//product)} products.</p>
</html>