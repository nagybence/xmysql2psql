Gem::Specification.new do |s|
  s.name = %q{xmysql2psql}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kota Mizushima <mizukota@gmail.com>"]
  s.date = %q{2013-08-26}
  s.default_executable = %q{xmysql2psql}
  s.description = %q{It can create postgresql dump from mysql database or directly load data from mysql to
    postgresql (at about 100 000 records per minute). Translates most data types and indexes.}
  s.email = %q{gallagher.paul@gmail.com}
  s.executables = ["xmysql2psql"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "bin/xmysql2psql",
     "lib/xmysql2psql.rb",
     "lib/xmysql2psql/config.rb",
     "lib/xmysql2psql/config_base.rb",
     "lib/xmysql2psql/converter.rb",
     "lib/xmysql2psql/errors.rb",
     "lib/xmysql2psql/mysql_reader.rb",
     "lib/xmysql2psql/postgres_db_writer.rb",
     "lib/xmysql2psql/postgres_file_writer.rb",
     "lib/xmysql2psql/postgres_writer.rb",
     "lib/xmysql2psql/version.rb",
     "lib/xmysql2psql/writer.rb",
     "xmysql2psql.gemspec",
     "test/fixtures/config_all_options.yml",
     "test/fixtures/seed_integration_tests.sql",
     "test/integration/convert_to_db_test.rb",
     "test/integration/convert_to_file_test.rb",
     "test/integration/converter_test.rb",
     "test/integration/mysql_reader_base_test.rb",
     "test/integration/mysql_reader_test.rb",
     "test/integration/postgres_db_writer_base_test.rb",
     "test/lib/ext_test_unit.rb",
     "test/lib/test_helper.rb",
     "test/units/config_base_test.rb",
     "test/units/config_test.rb",
     "test/units/postgres_file_writer_test.rb"
  ]
  s.homepage = %q{http://github.com/kmizu/xmysql2psql}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Tool for converting mysql database to postgresql}
  s.test_files = [
    "test/integration/convert_to_db_test.rb",
     "test/integration/convert_to_file_test.rb",
     "test/integration/converter_test.rb",
     "test/integration/mysql_reader_base_test.rb",
     "test/integration/mysql_reader_test.rb",
     "test/integration/postgres_db_writer_base_test.rb",
     "test/lib/ext_test_unit.rb",
     "test/lib/test_helper.rb",
     "test/units/config_base_test.rb",
     "test/units/config_test.rb",
     "test/units/postgres_file_writer_test.rb"
  ]

  s.specification_version = 3

  s.add_runtime_dependency(%q<pg>, [">= 0.16.0"])
  s.add_development_dependency(%q<test-unit>, [">= 2.5.5"])
  s.add_dependency(%q<mysql>, [">= 2.9.1"])
  s.add_dependency(%q<test-unit>, [">= 2.5.5"])
end
