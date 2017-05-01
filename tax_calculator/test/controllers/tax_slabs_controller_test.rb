require 'test_helper'

class TaxSlabsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tax_slabs_index_url
    assert_response :success
  end

  test "should get show" do
    get tax_slabs_show_url
    assert_response :success
  end

  test "should get new" do
    get tax_slabs_new_url
    assert_response :success
  end

  test "should get edit" do
    get tax_slabs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get tax_slabs_destroy_url
    assert_response :success
  end

end
