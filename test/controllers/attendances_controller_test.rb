require 'test_helper'

class AttendancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendances_index_url
    assert_response :success
  end

  test "should get show" do
    get attendances_show_url
    assert_response :success
  end

  test "should get create" do
    get attendances_create_url
    assert_response :success
  end

  test "should get edit" do
    get attendances_edit_url
    assert_response :success
  end

  test "should get delete" do
    get attendances_delete_url
    assert_response :success
  end

end
