require 'test_helper'

class RollCallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roll_calls_index_url
    assert_response :success
  end

  test "should get show" do
    get roll_calls_show_url
    assert_response :success
  end

  test "should get new" do
    get roll_calls_new_url
    assert_response :success
  end

  test "should get edit" do
    get roll_calls_edit_url
    assert_response :success
  end

end
