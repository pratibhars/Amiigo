require 'test_helper'

class AmiibosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amiibo = amiibos(:one)
  end

  test "should get index" do
    get amiibos_url
    assert_response :success
  end

  test "should get new" do
    get new_amiibo_url
    assert_response :success
  end

  test "should create amiibo" do
    assert_difference('Amiibo.count') do
      post amiibos_url, params: { amiibo: {  } }
    end

    assert_redirected_to amiibo_url(Amiibo.last)
  end

  test "should show amiibo" do
    get amiibo_url(@amiibo)
    assert_response :success
  end

  test "should get edit" do
    get edit_amiibo_url(@amiibo)
    assert_response :success
  end

  test "should update amiibo" do
    patch amiibo_url(@amiibo), params: { amiibo: {  } }
    assert_redirected_to amiibo_url(@amiibo)
  end

  test "should destroy amiibo" do
    assert_difference('Amiibo.count', -1) do
      delete amiibo_url(@amiibo)
    end

    assert_redirected_to amiibos_url
  end
end
