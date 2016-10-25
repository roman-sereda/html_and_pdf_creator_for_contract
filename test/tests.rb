require "minitest/autorun"
require "./app/create.rb"

class Tests < Minitest::Test

  def test_create_new_file
    create_new_file('test.html')
    assert File::exists?('test.html'), "Cant create file"
  end


end
