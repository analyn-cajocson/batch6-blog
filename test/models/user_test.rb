require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'should not save User without first_name' do
    user = User.new
    user.middle_name = 'Cui'
    user.last_name = 'Cajocson'
    user.age = 18
    user.address = 'Bulacan'

    assert_not user.save, 'Saved user without first_name'
  end
end
