lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kong_king/version'

Gem::Specification.new do |spec|
  spec.name          = 'kong_king'
  spec.version       = KongKing::VERSION
  spec.authors       = ['Balazs Szerencsi']
  spec.email         = ['balazs.szerencsi@icloud.com']

  spec.summary       = 'Kong API gateway client'
  spec.description   = "Ruby client for the Kong API gateway's admin API"
  spec.homepage      = 'https://github.com/BlasiusVonSzerencsi/kong_king'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    files_added_to_git = `git ls-files -z`
    files_added_to_git.split("\x0").reject do |file|
      file.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.65.0'
end
