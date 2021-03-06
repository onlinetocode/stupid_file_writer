require_relative "stupid_file_writer/version"
require 'fileutils'

module StupidFileWriter
  def self.write(path, content)
    create(path) if is_path?(path) && !File.exist?(path)
    file = File.open(path, 'w')
    file.print content
    file.close
  end

  def self.create(path)
    path = path.split('/')[0..-2].join('/')
    FileUtils.mkdir_p(path)
  end

  def self.is_path?(path)
    path.include?('/')
  end
end
