(:~
 : convert markdown to html text using flexmark-java https://github.com/vsch/flexmark-java
 :@author Andy Bunce
 :@version 0.1.0
 :Licence Apache 2 
 :)
declare namespace m="java:com.vladsch.flexmark.util.options.MutableDataSet";

declare namespace p="java:com.vladsch.flexmark.parser.Parser";
declare namespace pb="java:com.vladsch.flexmark.parser.Parser$Builder";

declare namespace h="java:com.vladsch.flexmark.html.HtmlRenderer";
declare namespace hb="java:com.vladsch.flexmark.html.HtmlRenderer$Builder";
declare namespace n="java:com.vladsch.flexmark.ast.Node";
declare namespace a="java:com.vladsch.flexmark.ext.autolink.AutolinkExtension";

(: options.set(Parser.EXTENSIONS, 
Arrays.asList(new Extension[] { AutolinkExtension.create(), 
SampleExtension.create() }));
:)
let $md:="# title
some text and a [link](https://github.com/vsch/flexmark-java)
* list
* list 2
```
a code block
```
more
"
let $opt:=m:new()
let $parser:= p:builder($opt)=>pb:build() 
let $doc:= p:parse($parser,$md)
let $renderer:= h:builder($opt)=>hb:build()
let $html:= h:render($renderer,$doc)
return $html