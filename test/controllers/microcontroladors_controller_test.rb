require 'test_helper'

class MicrocontroladorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microcontrolador = microcontroladors(:one)
  end

  test "should get index" do
    get microcontroladors_url
    assert_response :success
  end

  test "should get new" do
    get new_microcontrolador_url
    assert_response :success
  end

  test "should create microcontrolador" do
    assert_difference('Microcontrolador.count') do
      post microcontroladors_url, params: { microcontrolador: { nombre: @microcontrolador.nombre } }
    end

    assert_redirected_to microcontrolador_url(Microcontrolador.last)
  end

  test "should show microcontrolador" do
    get microcontrolador_url(@microcontrolador)
    assert_response :success
  end

  test "should get edit" do
    get edit_microcontrolador_url(@microcontrolador)
    assert_response :success
  end

  test "should update microcontrolador" do
    patch microcontrolador_url(@microcontrolador), params: { microcontrolador: { nombre: @microcontrolador.nombre } }
    assert_redirected_to microcontrolador_url(@microcontrolador)
  end

  test "should destroy microcontrolador" do
    assert_difference('Microcontrolador.count', -1) do
      delete microcontrolador_url(@microcontrolador)
    end

    assert_redirected_to microcontroladors_url
  end
end
