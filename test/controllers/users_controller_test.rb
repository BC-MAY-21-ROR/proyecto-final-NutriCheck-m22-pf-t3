# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_index_url
    assert_response :success
  end

  test 'should get new' do
    get users_new_url
    assert_response :success
  end

  test 'should get edit' do
    get users_edit_url
    assert_response :success
  end

    
  test 'can delete users' do
    assert_difference('user.count', -1) do
      delete user_path(users(:one))
    end

    assert_redirected_to users_path
    assert_equal flash[:notice], 'New Administrator Creadted'
  end

end
