require "test_helper"

class ErdControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get erd_show_url
    assert_response :success
  end
end
