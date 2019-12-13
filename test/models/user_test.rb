require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name returns the capitalized first name and last name" do
    # SETUP
    user = User.new(first_name: 'rUI' ,last_name: 'FREITAS')

    # EXECUTION
    actual = user.full_name

    # EXPECTATION
    expected = "Rui Freitas"

    # full name should return "Rui Freitas"
    assert_equal expected, actual
  end
end
