require 'test_helper'

class CnamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cnam = cnams(:one)
  end

  test "should get index" do
    get cnams_url
    assert_response :success
  end

  test "should get new" do
    get new_cnam_url
    assert_response :success
  end

  test "should create cnam" do
    assert_difference('Cnam.count') do
      post cnams_url, params: { cnam: { description: @cnam.description, libelle: @cnam.libelle } }
    end

    assert_redirected_to cnam_url(Cnam.last)
  end

  test "should show cnam" do
    get cnam_url(@cnam)
    assert_response :success
  end

  test "should get edit" do
    get edit_cnam_url(@cnam)
    assert_response :success
  end

  test "should update cnam" do
    patch cnam_url(@cnam), params: { cnam: { description: @cnam.description, libelle: @cnam.libelle } }
    assert_redirected_to cnam_url(@cnam)
  end

  test "should destroy cnam" do
    assert_difference('Cnam.count', -1) do
      delete cnam_url(@cnam)
    end

    assert_redirected_to cnams_url
  end
end
