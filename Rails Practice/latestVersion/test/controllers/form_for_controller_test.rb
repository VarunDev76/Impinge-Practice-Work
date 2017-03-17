require 'test_helper'

class FormForControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_for_index_url
    assert_response :success
  end

  test "should get show" do
    get form_for_show_url
    assert_response :success
  end

  test "should get new" do
    get form_for_new_url
    assert_response :success
  end

  test "should get update" do
    get form_for_update_url
    assert_response :success
  end

  test "should get delete" do
    get form_for_delete_url
    assert_response :success
  end

end
