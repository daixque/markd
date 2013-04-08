#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'rubygems'
require 'optparse'
require 'fileutils'

require 'markd/markd'

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

  def publish(filename, out_filename)
    force_exit("#{filename} not file or exists") unless File.file? filename
    out_dir = @options[:out_dir] || "docs"
    MarkD.new.publish(filename, out_dir, out_filename)
  end
  
  def run(argv)
    init argv
    
    argv.each do |filename|
      # use 'index.html' as output if one input file given
      out_filename = (argv.size == 1) ? "index.html" : File.basename(filename, ".*") + ".html"
      publish filename, out_filename
    end
  end
end