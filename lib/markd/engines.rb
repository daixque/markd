# -*- coding: utf-8 -*-

class MarkdownEngine
  def initialize
    require 'bluecloth'
  end
  
  def to_html(src)
    BlueCloth.new(src).to_html
  end
end

class WikiEngine
  def initialize
    require 'wikitext'
  end
  
  def to_html(src)
    Wikitext::Parser.new.parse(src)
  end
end

class TextileEngine
  def initialize
    require 'RedCloth'
  end

  def to_html(src)
    RedCloth.new(src).to_html
  end
end
