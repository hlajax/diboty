require 'test_helper'

class DonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @don = dons(:one)
  end

  test "should get index" do
    get dons_url
    assert_response :success
  end

  test "should get new" do
    get new_don_url
    assert_response :success
  end

  test "should create don" do
    assert_difference('Don.count') do
      post dons_url, params: { don: { adresse: @don.adresse, date: @don.date, detail: @don.detail, email: @don.email, nom: @don.nom, nom_entreprise: @don.nom_entreprise, numero_de_telephone: @don.numero_de_telephone } }
    end

    assert_redirected_to don_url(Don.last)
  end

  test "should show don" do
    get don_url(@don)
    assert_response :success
  end

  test "should get edit" do
    get edit_don_url(@don)
    assert_response :success
  end

  test "should update don" do
    patch don_url(@don), params: { don: { adresse: @don.adresse, date: @don.date, detail: @don.detail, email: @don.email, nom: @don.nom, nom_entreprise: @don.nom_entreprise, numero_de_telephone: @don.numero_de_telephone } }
    assert_redirected_to don_url(@don)
  end

  test "should destroy don" do
    assert_difference('Don.count', -1) do
      delete don_url(@don)
    end

    assert_redirected_to dons_url
  end
end
