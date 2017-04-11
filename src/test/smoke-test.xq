import module namespace  md="expkg-zone58:text.markdown" at "../content/markdown.xqm";
let $md:="# title
some text and a [link](https://github.com/vsch/flexmark-java)
* list
* list 2
```
a code block
```
more
"
return md:to-html($md)