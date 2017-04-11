(:~
 : convert markdown to html text using flexmark-java https://github.com/vsch/flexmark-java
 :@author Andy Bunce
 :@version 0.1.0
 :@licence Apache 2 
 :)
module namespace  md="expkg-zone58:text.markdown";

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
declare function md:to-html($md as xs:string)
as xs:string
{
    let $opt:=m:new()
    let $parser:= p:builder($opt)=>pb:build() 
    let $doc:= p:parse($parser,$md)
    let $renderer:= h:builder($opt)=>hb:build()
    let $html:= h:render($renderer,$doc)
    return $html
};