xquery version "1.0-ml";
declare namespace html = "http://www.w3.org/1999/xhtml";

xdmp:document-insert(
  local:guid(),
    <prospect>
      <first_name>{$first_name}</first_name>
      <last_name>{$last_name}</last_name>
      <email>{$email}</email>
    </prospect>,
  xdmp:default-permissions(),
  xdmp:default-collections(),
  10
)

