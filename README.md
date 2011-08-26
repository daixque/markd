markd
===========================
markd is rich html builder for markdown, and is especially focused on printing purpose.
You can get well-formatted printings (or PDF by preview) when you print html using modern browser (such as Google Chrome, Firefox, Safari).

markd is based on [bluecloth][1] and [google code prittify][2].

features:

 - Well-formatted HTML with CSS
 - Good style for printings
 - Auto numbered chapters
 - Code Highlighting

[1]: http://deveiate.org/projects/BlueCloth
[2]: http://code.google.com/p/google-code-prettify/


## Installation
You can install markd using RubyGems as below:

    gem install markd


## Usage
Build html:

    markd -o out_dir markdown.md

where *markdown.md* is target markdown file and *out_dir* is directory html/css/js files are generated into.

## Instructions
See more instructions:

 - [my blog post (in Japanese)][3]

[3]: http://opentechnica.blogspot.com/2011/08/markd.html

## Copyright

Copyright (c) 2011 [daisuke sugimori][4] ([@daixque][5]). See LICENSE.txt for
further details.

[4]: http://blognewart.blogspot.com/
[5]: http://twitter.com/daixque

