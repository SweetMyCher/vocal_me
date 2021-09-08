require "application_system_test_case"

class UserTextsTest < ApplicationSystemTestCase
  setup do
    @user_text = user_texts(:one)
  end

  test "visiting the index" do
    visit user_texts_url
    assert_selector "h1", text: "User Texts"
  end

  test "creating a User text" do
    visit user_texts_url
    click_on "New User Text"

    fill_in "Name", with: @user_text.name
    fill_in "Text", with: @user_text.text
    click_on "Create User text"

    assert_text "User text was successfully created"
    click_on "Back"
  end

  test "updating a User text" do
    visit user_texts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @user_text.name
    fill_in "Text", with: @user_text.text
    click_on "Update User text"

    assert_text "User text was successfully updated"
    click_on "Back"
  end

  test "destroying a User text" do
    visit user_texts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User text was successfully destroyed"
  end
end
