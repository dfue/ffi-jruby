require 'rubygems'
require 'rake/gempackagetask'
require 'rubygems/specification'
require 'date'
require 'fileutils'
require 'rbconfig'

GEM = "ffi"
GEM_VERSION = "0.2.0"
AUTHOR = "Wayne Meissner"
EMAIL = "wmeissner@gmail.com"
HOMEPAGE = "http://kenai.com/projects/ruby-ffi"
SUMMARY = "A Ruby foreign function interface"

spec = Gem::Specification.new do |s|
  s.name = GEM
  s.version = GEM_VERSION
  s.platform = 'java'
  s.has_rdoc = false
  s.extra_rdoc_files = ["README", "LICENSE"]
  s.summary = SUMMARY
  s.description = s.summary
  s.author = AUTHOR
  s.email = EMAIL
  s.homepage = HOMEPAGE
  s.rubyforge_project = 'ffi'
  s.require_path = 'lib'
  s.files = %w(README LICENSE Rakefile) + Dir.glob("lib/**/*")
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.gem_spec = spec
end

desc "create a gemspec file"
task :make_spec do
  File.open("#{GEM}.gemspec", "w") do |file|
    file.puts spec.to_ruby
  end
end
