require 'test_helper'

class MultipleselectControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get multipleselect_index_url
    assert_response :success
  end

  test "should get new" do
    get multipleselect_new_url
    assert_response :success
  end

  test "should get show" do
    get multipleselect_show_url
    assert_response :success
  end

  test "should get destroy" do
    get multipleselect_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get multipleselect_edit_url
    assert_response :success
  end

end
