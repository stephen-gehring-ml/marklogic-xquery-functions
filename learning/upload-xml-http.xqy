xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

declare private function local:random-hex($seq as xs:integer*) as xs:string+ {
  for $i in $seq return 
    fn:string-join(for $n in 1 to $i
      return xdmp:integer-to-hex(xdmp:random(15)), "")
};

declare function local:guid() as xs:string {
  fn:string-join(local:random-hex((8,4,4,4,12)),"-")
};


xdmp:document-load("http://www.marklogic.com/feed/",
    <options xmlns="xdmp:document-load">
      <uri>{ local:guid() }</uri>
    </options>)
