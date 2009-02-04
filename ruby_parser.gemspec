# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby_parser}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis", "Fabio Kung"]
  s.date = %q{2009-02-04}
  s.default_executable = %q{ruby_parse}
  s.description = %q{ruby_parser (RP) is a ruby parser written in pure ruby (utilizing racc--which does by default use a C extension). RP's output is the same as ParseTree's output: s-expressions using ruby's arrays and base types.  As an example:  def conditional1(arg1) if arg1 == 0 then return 1 end return 0 end  becomes:  s(:defn, :conditional1, s(:args, :arg1), s(:scope, s(:block, s(:if, s(:call, s(:lvar, :arg1), :==, s(:arglist, s(:lit, 0))), s(:return, s(:lit, 1)), nil), s(:return, s(:lit, 0)))))}
  s.email = ["ryand-ruby@zenspider.com", "fabio.kung@gmail.com"]
  s.executables = ["ruby_parse"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = [".autotest", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/ruby_parse", "lib/gauntlet_rubyparser.rb", "lib/ruby_lexer.rb", "lib/ruby_parser.y", "lib/ruby_parser_extras.rb", "test/test_ruby_lexer.rb", "test/test_ruby_parser.rb", "test/test_ruby_parser_extras.rb", "lib/ruby_parser.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/fabiokung/ruby_parser/tree/master}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{parsetree}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ruby_parser (RP) is a ruby parser written in pure ruby (utilizing racc--which does by default use a C extension)}
  s.test_files = ["test/test_ruby_lexer.rb", "test/test_ruby_parser.rb", "test/test_ruby_parser_extras.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sexp_processor>, [">= 3.0.1"])
      s.add_development_dependency(%q<ParseTree>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.2"])
    else
      s.add_dependency(%q<sexp_processor>, [">= 3.0.1"])
      s.add_dependency(%q<ParseTree>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.8.2"])
    end
  else
    s.add_dependency(%q<sexp_processor>, [">= 3.0.1"])
    s.add_dependency(%q<ParseTree>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.8.2"])
  end
end
