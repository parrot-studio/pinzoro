# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pinzoro/version'

Gem::Specification.new do |gem|
  gem.name          = "pinzoro"
  gem.version       = Pinzoro::VERSION
  gem.authors       = ["parrot-studio"]
  gem.email         = ["parrot.studio.dev@gmail.com"]
  gem.description   = %q{You can write like (T)RPG dice (e.g. 2D6, 3D20), and get result.}
  gem.summary       = %q{You can write like (T)RPG dice (e.g. 2D6, 3D20), and get result. "Pinzoro" means "1 and 1 on 2D6" in Japanese.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
