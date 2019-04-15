require "application_system_test_case"

class TypeofusersTest < ApplicationSystemTestCase
  setup do
    @typeofuser = typeofusers(:one)
  end

  test "visiting the index" do
    visit typeofusers_url
    assert_selector "h1", text: "Typeofusers"
  end

  test "creating a Typeofuser" do
    visit typeofusers_url
    click_on "New Typeofuser"

    fill_in "Name", with: @typeofuser.name
    click_on "Create Typeofuser"

    assert_text "Typeofuser was successfully created"
    click_on "Back"
  end

  test "updating a Typeofuser" do
    visit typeofusers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @typeofuser.name
    click_on "Update Typeofuser"

    assert_text "Typeofuser was successfully updated"
    click_on "Back"
  end

  test "destroying a Typeofuser" do
    visit typeofusers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typeofuser was successfully destroyed"
  end
end
