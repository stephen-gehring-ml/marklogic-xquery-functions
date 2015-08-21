xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

for $prod in (doc("catalog.xml")/catalog/product)
return if ($prod/@dept = 'ACC')
  then (<accessoryNum>{data($prod/number)}</accessoryNum>,<accessoryName>{data($prod/name)}</accessoryName>)
  else <otherNum>{data($prod/number)}</otherNum>