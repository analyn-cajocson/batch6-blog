require "test_helper"

class CreateUserTest < ActionDispatch::IntegrationTest

  test 'should go to new user form and able to create user' do
    get new_user_path
    assert_response :success

    assert_difference 'User.count', 1 do
      post create_user_path, params: { user: { first_name: 'Sample', last_name: 'Last Name',
                                    middle_name: 'middle', age: 10, address: 'PH' } }
    
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
  end

end