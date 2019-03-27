require 'test_helper'

class BandsControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get bands_form_url
    assert_response :success
  end

end
