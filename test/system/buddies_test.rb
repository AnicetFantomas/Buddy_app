require "application_system_test_case"

class BuddiesTest < ApplicationSystemTestCase
  setup do
    @buddy = buddies(:one)
  end

  test "visiting the index" do
    visit buddies_url
    assert_selector "h1", text: "Buddies"
  end

  test "should create buddy" do
    visit buddies_url
    click_on "New buddy"

    fill_in "First name", with: @buddy.first_name
    fill_in "Github", with: @buddy.github
    fill_in "Last name", with: @buddy.last_name
    fill_in "Phone num", with: @buddy.phone_num
    click_on "Create Buddy"

    assert_text "Buddy was successfully created"
    click_on "Back"
  end

  test "should update Buddy" do
    visit buddy_url(@buddy)
    click_on "Edit this buddy", match: :first

    fill_in "First name", with: @buddy.first_name
    fill_in "Github", with: @buddy.github
    fill_in "Last name", with: @buddy.last_name
    fill_in "Phone num", with: @buddy.phone_num
    click_on "Update Buddy"

    assert_text "Buddy was successfully updated"
    click_on "Back"
  end

  test "should destroy Buddy" do
    visit buddy_url(@buddy)
    click_on "Destroy this buddy", match: :first

    assert_text "Buddy was successfully destroyed"
  end
end
