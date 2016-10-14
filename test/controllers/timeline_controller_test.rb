require 'test_helper'

class TimelineControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get timeline_show_url
    assert_response :success
  end

end
