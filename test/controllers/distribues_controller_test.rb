require 'test_helper'

class DistribuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distribue = distribues(:one)
  end

  test "should get index" do
    get distribues_url
    assert_response :success
  end

  test "should get new" do
    get new_distribue_url
    assert_response :success
  end

  test "should create distribue" do
    assert_difference('Distribue.count') do
      post distribues_url, params: { distribue: { titre: @distribue.titre } }
    end

    assert_redirected_to distribue_url(Distribue.last)
  end

  test "should show distribue" do
    get distribue_url(@distribue)
    assert_response :success
  end

  test "should get edit" do
    get edit_distribue_url(@distribue)
    assert_response :success
  end

  test "should update distribue" do
    patch distribue_url(@distribue), params: { distribue: { titre: @distribue.titre } }
    assert_redirected_to distribue_url(@distribue)
  end

  test "should destroy distribue" do
    assert_difference('Distribue.count', -1) do
      delete distribue_url(@distribue)
    end

    assert_redirected_to distribues_url
  end
end
