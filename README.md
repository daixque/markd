markd
===========================
markd is rich html builder for markdown, wiki and textile format. It is especially focused on printing purpose.
You can get well-formatted printings (or PDF by preview) when you print html using modern browser (such as Google Chrome, Firefox, Safari).

markd is based on [BlueCloth][1], [RedCloth][2], [Wikitext][3] and [google code prittify][4].

features:

 - Well-formatted HTML with CSS
 - Good style for printings
 - Auto numbered chapters
 - Code Highlighting

[1]: http://deveiate.org/projects/BlueCloth
[2]: http://redcloth.org/
[3]: https://wincent.com/products/wikitext
[4]: http://code.google.com/p/google-code-prettify/


## Installation
You can install markd using RubyGems as below:

    $ gem install markd


## Usage
Build html from markdown:

    $ markd -o out_dir markdown.md

where *markdown.md* is target markdown file and *out_dir* is directory
that html/css/js files are generated into.

Use -h (or --help) option to show detail.

    $ markd -h

## Engines
markd has three engines:

 - Markdown (default)
 - Textile
 - Wiki

markd automatically select engine by file extention (.md for Markdown, .textile for Textile, .wiki for Wiki).

## Instructions
See more instructions:

 - [my blog post (in Japanese)][5]

[5]: http://opentechnica.blogspot.com/2011/08/markd.html

## License
markd is released under the MIT license.

## Copyright
Copyright (c) 2011 [daisuke sugimori][6] ([@daixque][7]).

[6]: http://blognewart.blogspot.com/
[7]: http://twitter.com/daixque

