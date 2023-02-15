require "test_helper"

class SuperUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_user = super_users(:one)
  end

  test "should get index" do
    get super_users_url
    assert_response :success
  end

  test "should get new" do
    get new_super_user_url
    assert_response :success
  end

  test "should create super_user" do
    assert_difference("SuperUser.count") do
      post super_users_url, params: { super_user: { name: @super_user.name } }
    end

    assert_redirected_to super_user_url(SuperUser.last)
  end

  test "should show super_user" do
    get super_user_url(@super_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_user_url(@super_user)
    assert_response :success
  end

  test "should update super_user" do
    patch super_user_url(@super_user), params: { super_user: { name: @super_user.name } }
    assert_redirected_to super_user_url(@super_user)
  end

  test "should destroy super_user" do
    assert_difference("SuperUser.count", -1) do
      delete super_user_url(@super_user)
    end

    assert_redirected_to super_users_url
  end
end
