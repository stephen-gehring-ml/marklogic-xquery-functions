xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

for $d in distinct-values( doc("order.xml")//item/@dept )
let $items := doc("order.xml")//item[@dept = $d]
order by $d
return <department name="{$d}" totQuantity="{sum($items/@quantity)}" />
