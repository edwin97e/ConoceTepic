require 'test_helper'

class TypeofusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typeofuser = typeofusers(:one)
  end

  test "should get index" do
    get typeofusers_url
    assert_response :success
  end

  test "should get new" do
    get new_typeofuser_url
    assert_response :success
  end

  test "should create typeofuser" do
    assert_difference('Typeofuser.count') do
      post typeofusers_url, params: { typeofuser: { name: @typeofuser.name } }
    end

    assert_redirected_to typeofuser_url(Typeofuser.last)
  end

  test "should show typeofuser" do
    get typeofuser_url(@typeofuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_typeofuser_url(@typeofuser)
    assert_response :success
  end

  test "should update typeofuser" do
    patch typeofuser_url(@typeofuser), params: { typeofuser: { name: @typeofuser.name } }
    assert_redirected_to typeofuser_url(@typeofuser)
  end

  test "should destroy typeofuser" do
    assert_difference('Typeofuser.count', -1) do
      delete typeofuser_url(@typeofuser)
    end

    assert_redirected_to typeofusers_url
  end
end
