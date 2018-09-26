require_relative '../../test_helper'

describe StupidFileWriter do

  def setup
    @content = "New content in file!"
    @filename = 'my_file.rb'
    @path = 'test/testfiles'
    @full_path = "#{@path}/#{@filename}"
  end

  def teardown
    if File.exist?(@full_path)
        File.delete(@full_path)
    end

    if Dir.exist?(@path)
        path_elements = @path.split('/')
        path_depth = path_elements.count
        path_depth.times do |i|
            break if path_elements.count == 1
            Dir.rmdir(path_elements.join('/'))
            path_elements.pop
        end
    end
  end
    
  it "must respond to create" do
    StupidFileWriter.must_respond_to(:create)
  end

  it "must respond to write" do
    StupidFileWriter.must_respond_to(:write)
  end

  it "must create path" do
    StupidFileWriter.create(@full_path)
    assert Dir.exist?(@path)
  end

  it "must create content in file" do
    path = @path
    StupidFileWriter.write(@full_path, @content)
    assert_equal File.read(@full_path), @content, 'Content is created'
  end

  it "must overwrite content in file" do
    StupidFileWriter.write(@full_path, 'To overwrite')
    StupidFileWriter.write(@full_path, @content)
    assert_equal File.read(@full_path), @content, 'Content is overwritten'
  end
end
