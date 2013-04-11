#!/usr/bin/env ruby
require 'fileutils'

working_dir = File.expand_path(File.dirname(__FILE__))
home_dir = File.expand_path("~")

dot_files = Dir.glob(File.join(working_dir,"*"))
dot_files.each do |filename|
  next if filename =~ /activate\.rb$/

  sym_link = File.join(home_dir,".#{File.basename(filename)}")

  if File.exist? sym_link
    if File.symlink? sym_link
      FileUtils.rm sym_link
    else
      FileUtils.mv sym_link, "#{sym_link}.bak"
    end
  end
  FileUtils.ln_s filename,sym_link
end

