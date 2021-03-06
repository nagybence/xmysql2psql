require 'test_helper'

require 'xmysql2psql/mysql_reader'

class MysqlReaderBaseTest < Test::Unit::TestCase

  class << self
    def startup
      seed_test_database
      @@options = get_test_config_by_label(:localmysql_to_file_convert_nothing)
    end
    def shutdown
      delete_files_for_test_config(@@options)
    end
  end
  def setup
  end
  def teardown
  end
  def options
    @@options
  end
  
  def test_mysql_connection
    assert_nothing_raised do
      reader = Xmysql2psql::MysqlReader.new(options)
    end
  end
  def test_mysql_reconnect
    assert_nothing_raised do
      reader = Xmysql2psql::MysqlReader.new(options)
      reader.reconnect
    end
  end
end