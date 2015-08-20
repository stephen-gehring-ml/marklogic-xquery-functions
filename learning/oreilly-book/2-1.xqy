xquery version "1.0-ml";
declare boundary-space preserve;
declare namespace prod = "http://datypic/prod";
declare namespace html = "http://www.w3.org/1999/xhtml";
declare variable $catalog := doc("catalog.xml")//catalog;

<firstResult>{ count($catalog/product) }</firstResult>,
<prod:secondResult>{$catalog/product/number}</prod:secondResult>