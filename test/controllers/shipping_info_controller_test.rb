require "test_helper"

class ShippingInfoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shipping_info_show_url
    assert_response :success
  end
end
