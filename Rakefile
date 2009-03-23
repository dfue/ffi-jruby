begin
  require 'bones'
  Bones.setup
rescue LoadError
  load 'tasks/setup.rb'
end

task :default => 'gem:repackage'

PROJ.name = 'ffi'
PROJ.authors = "JRuby Project"
PROJ.email = "dev@ruby-ffi.kenai.com"
PROJ.url = "http://kenai.com/projects/ruby-ffi"
PROJ.version = "0.3.1"
PROJ.rubyforge.name = 'ffi'
PROJ.svn.path = 'ffi'
PROJ.summary = "A Ruby foreign function interface"
PROJ.exclude << [ "\\.hg", "^nbproject/" ]
PROJ.notes.exclude = %w(^README\.txt$ History\.txt ^data/ ^nbproject/)
PROJ.gem.files = %w(README.txt History.txt LICENSE Rakefile) + Dir.glob("lib/**/*")
PROJ.gem.extras['platform']=['java']
PROJ.gem.extras['has_rdoc']=false
PROJ.gem.need_tar = false
PROJ.gem.need_zip = false
