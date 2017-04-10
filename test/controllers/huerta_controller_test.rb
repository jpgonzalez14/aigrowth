require 'test_helper'

class HuertaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @huertum = huerta(:one)
  end

  test "should get index" do
    get huerta_url
    assert_response :success
  end

  test "should get new" do
    get new_huertum_url
    assert_response :success
  end

  test "should create huertum" do
    assert_difference('Huertum.count') do
      post huerta_url, params: { huertum: { name: @huertum.name, type: @huertum.type, user_id: @huertum.user_id } }
    end

    assert_redirected_to huertum_url(Huertum.last)
  end

  test "should show huertum" do
    get huertum_url(@huertum)
    assert_response :success
  end

  test "should get edit" do
    get edit_huertum_url(@huertum)
    assert_response :success
  end

  test "should update huertum" do
    patch huertum_url(@huertum), params: { huertum: { name: @huertum.name, type: @huertum.type, user_id: @huertum.user_id } }
    assert_redirected_to huertum_url(@huertum)
  end

  test "should destroy huertum" do
    assert_difference('Huertum.count', -1) do
      delete huertum_url(@huertum)
    end

    assert_redirected_to huerta_url
  end
end
