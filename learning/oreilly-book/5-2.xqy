xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";
<html>
<h1>Catalog</h1>
<ul>{
for $prod in doc("catalog.xml")/catalog/product
return <li>number: {data($prod/number)}, name: {data($prod/name)}</li>
}</ul>
</html>