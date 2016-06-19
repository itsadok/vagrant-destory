$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'vagrant-destory/version'

Gem::Specification.new do |s|
  s.name        = 'vagrant-destory'
  s.version     = VagrantPlugins::Destory::VERSION
  s.author      = 'Israel Tsadok'
  s.email       = 'itsadok@gmail.com'
  s.homepage    = 'http://github.com/itsadok/vagrant-destory'
  s.summary     = 'Run destroy when you mistyped as destory'
  s.description = 'Vagrant plugin to fix my typos for me'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.add_development_dependency 'rake'
end
