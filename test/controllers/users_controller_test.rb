require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test 'returns all users in index' do
    get users_path

    assert_response :success
  end

  test 'should get new' do
    get new_user_path

    assert_response :success
  end

  test 'should create user' do
    assert_difference 'User.count', 1 do
      post create_user_path, params: { user: { first_name: 'Sample', last_name: 'Last Name',
                                    middle_name: 'middle', age: 10, address: 'PH' } }
    
      assert_response :redirect
    end
  end
end
