require 'test_helper'

class FormesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forme = formes(:one)
  end

  test "should get index" do
    get formes_url
    assert_response :success
  end

  test "should get new" do
    get new_forme_url
    assert_response :success
  end

  test "should create forme" do
    assert_difference('Forme.count') do
      post formes_url, params: { forme: { nom: @forme.nom, slug: @forme.slug } }
    end

    assert_redirected_to forme_url(Forme.last)
  end

  test "should show forme" do
    get forme_url(@forme)
    assert_response :success
  end

  test "should get edit" do
    get edit_forme_url(@forme)
    assert_response :success
  end

  test "should update forme" do
    patch forme_url(@forme), params: { forme: { nom: @forme.nom, slug: @forme.slug } }
    assert_redirected_to forme_url(@forme)
  end

  test "should destroy forme" do
    assert_difference('Forme.count', -1) do
      delete forme_url(@forme)
    end

    assert_redirected_to formes_url
  end
end
