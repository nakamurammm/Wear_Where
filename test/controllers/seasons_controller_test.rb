require 'test_helper'

class SeasonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get seasons_new_url
    assert_response :success
  end

  test "should get create" do
    get seasons_create_url
    assert_response :success
  end

  test "should get edit" do
    get seasons_edit_url
    assert_response :success
  end

  test "should get update" do
    get seasons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get seasons_destroy_url
    assert_response :success
  end

end
