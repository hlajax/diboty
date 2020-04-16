require 'test_helper'

class KitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kit = kits(:one)
  end

  test "should get index" do
    get kits_url
    assert_response :success
  end

  test "should get new" do
    get new_kit_url
    assert_response :success
  end

  test "should create kit" do
    assert_difference('Kit.count') do
      post kits_url, params: { kit: { activite_mere: @kit.activite_mere, activite_professionnelle: @kit.activite_professionnelle, arrondissement_id: @kit.arrondissement_id, cnamgs: @kit.cnamgs, cnss: @kit.cnss, commune_id: @kit.commune_id, date_de_naissance: @kit.date_de_naissance, email: @kit.email, habitat_id: @kit.habitat_id, lieu_de_naissance: @kit.lieu_de_naissance, lieu_de_priere: @kit.lieu_de_priere, niveau_etude_mere: @kit.niveau_etude_mere, nom: @kit.nom, nombre_agees: @kit.nombre_agees, nombre_handicap: @kit.nombre_handicap, nombre_jeune: @kit.nombre_jeune, nombre_mere: @kit.nombre_mere, nombre_orphelin: @kit.nombre_orphelin, numero_canal: @kit.numero_canal, numero_compteur: @kit.numero_compteur, numero_mobile_money: @kit.numero_mobile_money, quartier: @kit.quartier, religion: @kit.religion, revenu_mensuel: @kit.revenu_mensuel, sex_id: @kit.sex_id, statut_id: @kit.statut_id, telephones: @kit.telephones } }
    end

    assert_redirected_to kit_url(Kit.last)
  end

  test "should show kit" do
    get kit_url(@kit)
    assert_response :success
  end

  test "should get edit" do
    get edit_kit_url(@kit)
    assert_response :success
  end

  test "should update kit" do
    patch kit_url(@kit), params: { kit: { activite_mere: @kit.activite_mere, activite_professionnelle: @kit.activite_professionnelle, arrondissement_id: @kit.arrondissement_id, cnamgs: @kit.cnamgs, cnss: @kit.cnss, commune_id: @kit.commune_id, date_de_naissance: @kit.date_de_naissance, email: @kit.email, habitat_id: @kit.habitat_id, lieu_de_naissance: @kit.lieu_de_naissance, lieu_de_priere: @kit.lieu_de_priere, niveau_etude_mere: @kit.niveau_etude_mere, nom: @kit.nom, nombre_agees: @kit.nombre_agees, nombre_handicap: @kit.nombre_handicap, nombre_jeune: @kit.nombre_jeune, nombre_mere: @kit.nombre_mere, nombre_orphelin: @kit.nombre_orphelin, numero_canal: @kit.numero_canal, numero_compteur: @kit.numero_compteur, numero_mobile_money: @kit.numero_mobile_money, quartier: @kit.quartier, religion: @kit.religion, revenu_mensuel: @kit.revenu_mensuel, sex_id: @kit.sex_id, statut_id: @kit.statut_id, telephones: @kit.telephones } }
    assert_redirected_to kit_url(@kit)
  end

  test "should destroy kit" do
    assert_difference('Kit.count', -1) do
      delete kit_url(@kit)
    end

    assert_redirected_to kits_url
  end
end
