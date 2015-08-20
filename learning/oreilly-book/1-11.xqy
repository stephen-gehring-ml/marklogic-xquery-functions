xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";


<ul type="square">{
for $product in doc("catalog.xml")/catalog/product
where $product/@dept='ACC'
order by $product/name
return <li class="{$product/name/@language}">{data($product/name)}</li>
}</ul>