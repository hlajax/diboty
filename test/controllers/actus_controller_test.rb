require 'test_helper'

class ActusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actu = actus(:one)
  end

  test "should get index" do
    get actus_url
    assert_response :success
  end

  test "should get new" do
    get new_actu_url
    assert_response :success
  end

  test "should create actu" do
    assert_difference('Actu.count') do
      post actus_url, params: { actu: { nom: @actu.nom } }
    end

    assert_redirected_to actu_url(Actu.last)
  end

  test "should show actu" do
    get actu_url(@actu)
    assert_response :success
  end

  test "should get edit" do
    get edit_actu_url(@actu)
    assert_response :success
  end

  test "should update actu" do
    patch actu_url(@actu), params: { actu: { nom: @actu.nom } }
    assert_redirected_to actu_url(@actu)
  end

  test "should destroy actu" do
    assert_difference('Actu.count', -1) do
      delete actu_url(@actu)
    end

    assert_redirected_to actus_url
  end
end
