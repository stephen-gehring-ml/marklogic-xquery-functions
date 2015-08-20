xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

declare function local:guid() as xs:string {
  fn:string-join(local:random-hex((8,4,4,4,12)),"-")
};