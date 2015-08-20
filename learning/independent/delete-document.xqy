xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";


if (xdmp:exists(cts:search(collection(), "test")))
then
xdmp:document-delete("test")
else "Nothing"