require 'test_helper'

class GeoIpRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get geo_ip_request_new_url
    assert_response :success
  end

  test "should get create" do
    get geo_ip_request_create_url
    assert_response :success
  end

end
