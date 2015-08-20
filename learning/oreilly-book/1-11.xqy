xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";


xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

for $item in doc("order.xml")//item
let $name := doc("catalog.xml")//product[number = $item/@num]/name
return <item num="{$item/@num}" name="{$name}" quan="$item/@quantity" />