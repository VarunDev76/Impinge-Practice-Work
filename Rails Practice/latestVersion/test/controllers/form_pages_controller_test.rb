require 'test_helper'

class FormPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get form_pages_show_url
    assert_response :success
  end

  test "should get new" do
    get form_pages_new_url
    assert_response :success
  end

  test "should get delete" do
    get form_pages_delete_url
    assert_response :success
  end

  test "should get edit" do
    get form_pages_edit_url
    assert_response :success
  end

end
