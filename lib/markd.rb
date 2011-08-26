#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'bluecloth'
require 'erubis'
require 'optparse'
require 'fileutils'
require 'nokogiri'

APP_NAME = 'markd'
APP_ROOT = File.dirname File.expand_path(__FILE__ + "/..")

RESOURCES = ["css", "js"]

class MarkDApp
  def usage
    usage_text = <<-"USAGE"
Usage:
  markd [-o OUTPUT_DIR] markdown

Options:
  -v, [--version]           show version
  -h, [--help]              show usage
  -o, [--output=OUTPUT_DIR] set output directory (default "docs")
USAGE
  end
  
  def parse_opts(argv)
    @options = {}
    OptionParser.new { |opt|
      opt.on("-v", "--version") {
        version = File.read "#{APP_ROOT}/VERSION"
        puts "#{APP_NAME} #{version}"
        exit(0)
      }
      opt.on("-h", "--help") {
        puts usage
        exit(0)
      }
      opt.on("-o OUTDIR", "--output OUTDIR") { |out_dir|
        @options[:out_dir] = out_dir
      }
      
      opt.parse! argv
    }
    @options
  end
  
  def init(argv)
    @options = parse_opts argv
  end
  
  def force_exit(reason)
    puts reason
    exit 0
  end
  
  def run(argv)
    init argv
    
    filename = argv.first
    force_exit("#{filename} not file or exists") unless File.file? filename
    md_src = File.read filename
    out_dir = @options[:out_dir] || "docs"
    MarkD.publish(md_src, out_dir)
  end
end

class MarkD
  def self.publish(md_src, out_dir_path)
    # parse
    @md_html = BlueCloth.new(md_src).to_html
    doc = Nokogiri::HTML::Document.parse @md_html
    @title = doc.css("h1").text
    
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

if __FILE__ == $0
  MarkDApp.new.run ARGV
end