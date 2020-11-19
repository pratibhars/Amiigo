require 'test_helper'

class AmiigosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get amiigos_index_url
    assert_response :success
  end

end
