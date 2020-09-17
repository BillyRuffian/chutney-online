require 'test_helper'

class ChutneyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chutney_index_url
    assert_response :success
  end

end
