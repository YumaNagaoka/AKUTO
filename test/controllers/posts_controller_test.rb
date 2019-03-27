require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get posts_form_url
    assert_response :success
  end

end
