# -*- coding: utf-8 -*-
require 'markd/engines'
require 'erubis'
require 'nokogiri'

class MarkD
  ENGINES = {
    /md/      => MarkdownEngine,
    /wiki/    => WikiEngine,
    /textile/ => TextileEngine,
  }
  ENGINES.default = MarkdownEngine
  
  def create_engine(extname)
    ENGINES.each do |regex, engine|
      return engine.new if regex =~ extname
    end
    ENGINES[nil].new
  end
  
  def publish(filename, out_dir_path)
    ext = File.extname(filename)
    engine = create_engine ext
    src = File.read filename
    
    # parse
    @html = engine.to_html(src)
    
    doc = Nokogiri::HTML::Document.parse @html
    @title = doc.css("h1:first").text
    
    # render
    erb_src = File.read "#{APP_ROOT}/template/template.html.erb"
    eruby = Erubis::Eruby.new(erb_src)
    html = eruby.result(binding)
    
    # output
    FileUtils.mkdir_p out_dir_path
    File.open("#{out_dir_path}/index.html", "w") { |f| f.puts html }
    dirs = ::RESOURCES.map { |d| "#{APP_ROOT}/template/#{d}"}
    FileUtils.cp_r(dirs, out_dir_path)
  end
end