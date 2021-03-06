require_relative 'lib/tools/version'

Gem::Specification.new do |spec|
  spec.name          = "tools"
  spec.version       = Tools::VERSION
  spec.authors       = ["nikolatriki"]
  spec.email         = ["kjofte@yahoo.com"]

  spec.summary       = %q{This is a Luhn algoritm gem.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/nikolatriki/Lunh"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://github.com/nikolatriki/Lunh'"

  spec.metadata["homepage uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nikolatriki/Lunh"
  spec.metadata["changelog_uri"] = "https://github.com/nikolatriki/Lunh"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
