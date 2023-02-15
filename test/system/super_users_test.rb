require "application_system_test_case"

class SuperUsersTest < ApplicationSystemTestCase
  setup do
    @super_user = super_users(:one)
  end

  test "visiting the index" do
    visit super_users_url
    assert_selector "h1", text: "Super users"
  end

  test "should create super user" do
    visit super_users_url
    click_on "New super user"

    fill_in "Name", with: @super_user.name
    click_on "Create Super user"

    assert_text "Super user was successfully created"
    click_on "Back"
  end

  test "should update Super user" do
    visit super_user_url(@super_user)
    click_on "Edit this super user", match: :first

    fill_in "Name", with: @super_user.name
    click_on "Update Super user"

    assert_text "Super user was successfully updated"
    click_on "Back"
  end

  test "should destroy Super user" do
    visit super_user_url(@super_user)
    click_on "Destroy this super user", match: :first

    assert_text "Super user was successfully destroyed"
  end
end
