#!/usr/bin/env rake
require "bundler/gem_tasks"
 
require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.libs << 'lib/stupid_file_writer'
  t.libs << 'spec'
  t.test_files = FileList['test/lib/stupid_file_writer/*_test.rb']
  t.verbose = true
end