require 'test_helper'

class SiegesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @siege = sieges(:one)
  end

  test "should get index" do
    get sieges_url
    assert_response :success
  end

  test "should get new" do
    get new_siege_url
    assert_response :success
  end

  test "should create siege" do
    assert_difference('Siege.count') do
      post sieges_url, params: { siege: { nom: @siege.nom, slug: @siege.slug } }
    end

    assert_redirected_to siege_url(Siege.last)
  end

  test "should show siege" do
    get siege_url(@siege)
    assert_response :success
  end

  test "should get edit" do
    get edit_siege_url(@siege)
    assert_response :success
  end

  test "should update siege" do
    patch siege_url(@siege), params: { siege: { nom: @siege.nom, slug: @siege.slug } }
    assert_redirected_to siege_url(@siege)
  end

  test "should destroy siege" do
    assert_difference('Siege.count', -1) do
      delete siege_url(@siege)
    end

    assert_redirected_to sieges_url
  end
end
