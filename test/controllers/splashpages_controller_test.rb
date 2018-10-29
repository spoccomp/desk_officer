require 'test_helper'

class SplashpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get splashpages_index_url
    assert_response :success
  end

end
