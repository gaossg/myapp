require "test_helper"

class OrderDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get orderDetailPage" do
    get order_detail_orderDetailPage_url
    assert_response :success
  end
end
