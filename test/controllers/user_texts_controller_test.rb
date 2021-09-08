require "test_helper"

class UserTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_text = user_texts(:one)
  end

  test "should get index" do
    get user_texts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_text_url
    assert_response :success
  end

  test "should create user_text" do
    assert_difference('UserText.count') do
      post user_texts_url, params: { user_text: { name: @user_text.name, text: @user_text.text } }
    end

    assert_redirected_to user_text_url(UserText.last)
  end

  test "should show user_text" do
    get user_text_url(@user_text)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_text_url(@user_text)
    assert_response :success
  end

  test "should update user_text" do
    patch user_text_url(@user_text), params: { user_text: { name: @user_text.name, text: @user_text.text } }
    assert_redirected_to user_text_url(@user_text)
  end

  test "should destroy user_text" do
    assert_difference('UserText.count', -1) do
      delete user_text_url(@user_text)
    end

    assert_redirected_to user_texts_url
  end
end
