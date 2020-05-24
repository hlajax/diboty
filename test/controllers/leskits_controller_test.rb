require 'test_helper'

class LeskitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leskit = leskits(:one)
  end

  test "should get index" do
    get leskits_url
    assert_response :success
  end

  test "should get new" do
    get new_leskit_url
    assert_response :success
  end

  test "should create leskit" do
    assert_difference('Leskit.count') do
      post leskits_url, params: { leskit: { prix: @leskit.prix, titre: @leskit.titre } }
    end

    assert_redirected_to leskit_url(Leskit.last)
  end

  test "should show leskit" do
    get leskit_url(@leskit)
    assert_response :success
  end

  test "should get edit" do
    get edit_leskit_url(@leskit)
    assert_response :success
  end

  test "should update leskit" do
    patch leskit_url(@leskit), params: { leskit: { prix: @leskit.prix, titre: @leskit.titre } }
    assert_redirected_to leskit_url(@leskit)
  end

  test "should destroy leskit" do
    assert_difference('Leskit.count', -1) do
      delete leskit_url(@leskit)
    end

    assert_redirected_to leskits_url
  end
end
