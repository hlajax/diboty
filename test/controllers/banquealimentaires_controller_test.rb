require 'test_helper'

class BanquealimentairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banquealimentaire = banquealimentaires(:one)
  end

  test "should get index" do
    get banquealimentaires_url
    assert_response :success
  end

  test "should get new" do
    get new_banquealimentaire_url
    assert_response :success
  end

  test "should create banquealimentaire" do
    assert_difference('Banquealimentaire.count') do
      post banquealimentaires_url, params: { banquealimentaire: { actu_id: @banquealimentaire.actu_id, chef_id: @banquealimentaire.chef_id, compte_id: @banquealimentaire.compte_id, distribue_id: @banquealimentaire.distribue_id, nombre_de_personnes: @banquealimentaire.nombre_de_personnes, nombre_handicapes: @banquealimentaire.nombre_handicapes, nombre_jeune: @banquealimentaire.nombre_jeune, nombre_jeune_mere: @banquealimentaire.nombre_jeune_mere, nombre_nourisson: @banquealimentaire.nombre_nourisson, nombre_vieux: @banquealimentaire.nombre_vieux, situation_id: @banquealimentaire.situation_id, statut_id: @banquealimentaire.statut_id } }
    end

    assert_redirected_to banquealimentaire_url(Banquealimentaire.last)
  end

  test "should show banquealimentaire" do
    get banquealimentaire_url(@banquealimentaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_banquealimentaire_url(@banquealimentaire)
    assert_response :success
  end

  test "should update banquealimentaire" do
    patch banquealimentaire_url(@banquealimentaire), params: { banquealimentaire: { actu_id: @banquealimentaire.actu_id, chef_id: @banquealimentaire.chef_id, compte_id: @banquealimentaire.compte_id, distribue_id: @banquealimentaire.distribue_id, nombre_de_personnes: @banquealimentaire.nombre_de_personnes, nombre_handicapes: @banquealimentaire.nombre_handicapes, nombre_jeune: @banquealimentaire.nombre_jeune, nombre_jeune_mere: @banquealimentaire.nombre_jeune_mere, nombre_nourisson: @banquealimentaire.nombre_nourisson, nombre_vieux: @banquealimentaire.nombre_vieux, situation_id: @banquealimentaire.situation_id, statut_id: @banquealimentaire.statut_id } }
    assert_redirected_to banquealimentaire_url(@banquealimentaire)
  end

  test "should destroy banquealimentaire" do
    assert_difference('Banquealimentaire.count', -1) do
      delete banquealimentaire_url(@banquealimentaire)
    end

    assert_redirected_to banquealimentaires_url
  end
end
