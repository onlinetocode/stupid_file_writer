# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stupid_file_writer/version'

Gem::Specification.new do |spec|
  spec.name          = "stupid_file_writer"
  spec.version       = StupidFileWriter::VERSION
  spec.authors       = ["Maurice Kock"]
  spec.email         = ["kock.maurice@googlemail.com"]

  spec.summary       = %q{Just writes content to a file.}
  spec.description   = %q{Creates file if not exist and writes content to it. Overwrites previous content.}
  spec.homepage      = "https://github.com/onlinetocode/stupid_file_writer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
