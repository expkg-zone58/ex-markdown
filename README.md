# ex-markdown

Convert markdown text to html text using [flexmark-java](https://github.com/vsch/flexmark-java)

## Usage

``` 
import module namespace  md="expkg-zone58:text.markdown" ;

let $md:="\# title
some text and a \[link](https://github.com/vsch/flexmark-java)
* list
* list 2
\```
a code block
\```
more
"

md:to-html($text)
```

Result
```html
<h1>title</h1>
<p>some text and a <a href="https://github.com/vsch/flexmark-java">link</a></p>
<ul>
<li>list</li>
<li>list 2</li>
</ul>
<pre><code>a code block
</code></pre>
<p>more</p>
```

