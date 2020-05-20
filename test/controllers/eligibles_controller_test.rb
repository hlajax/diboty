require 'test_helper'

class EligiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eligible = eligibles(:one)
  end

  test "should get index" do
    get eligibles_url
    assert_response :success
  end

  test "should get new" do
    get new_eligible_url
    assert_response :success
  end

  test "should create eligible" do
    assert_difference('Eligible.count') do
      post eligibles_url, params: { eligible: { description: @eligible.description, libelle: @eligible.libelle } }
    end

    assert_redirected_to eligible_url(Eligible.last)
  end

  test "should show eligible" do
    get eligible_url(@eligible)
    assert_response :success
  end

  test "should get edit" do
    get edit_eligible_url(@eligible)
    assert_response :success
  end

  test "should update eligible" do
    patch eligible_url(@eligible), params: { eligible: { description: @eligible.description, libelle: @eligible.libelle } }
    assert_redirected_to eligible_url(@eligible)
  end

  test "should destroy eligible" do
    assert_difference('Eligible.count', -1) do
      delete eligible_url(@eligible)
    end

    assert_redirected_to eligibles_url
  end
end
