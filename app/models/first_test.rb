require 'test_helper'

class FirstTest < ActiveSupport::TestCase
  test "my first test" do
    variavel = "Raphael"
    assert_equal("Raphael", variavel)
  end

end