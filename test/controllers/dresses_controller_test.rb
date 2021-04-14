require 'test_helper'

class DressesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dresses_new_url
    assert_response :success
  end

  test "should get index" do
    get dresses_index_url
    assert_response :success
  end

  test "should get show" do
    get dresses_show_url
    assert_response :success
  end

  test "should get edit" do
    get dresses_edit_url
    assert_response :success
  end

end
