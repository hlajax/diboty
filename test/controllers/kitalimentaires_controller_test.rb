require 'test_helper'

class KitalimentairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kitalimentaire = kitalimentaires(:one)
  end

  test "should get index" do
    get kitalimentaires_url
    assert_response :success
  end

  test "should get new" do
    get new_kitalimentaire_url
    assert_response :success
  end

  test "should create kitalimentaire" do
    assert_difference('Kitalimentaire.count') do
      post kitalimentaires_url, params: { kitalimentaire: { age: @kitalimentaire.age, arrondissement: @kitalimentaire.arrondissement, chef_id: @kitalimentaire.chef_id, cnamgs_id: @kitalimentaire.cnamgs_id, compteur_id: @kitalimentaire.compteur_id, contacts: @kitalimentaire.contacts, eligible_id: @kitalimentaire.eligible_id, nom: @kitalimentaire.nom, nombre: @kitalimentaire.nombre, photo: @kitalimentaire.photo, piece: @kitalimentaire.piece, profession: @kitalimentaire.profession, province_id: @kitalimentaire.province_id, quartier: @kitalimentaire.quartier, sex_id: @kitalimentaire.sex_id, ville: @kitalimentaire.ville } }
    end

    assert_redirected_to kitalimentaire_url(Kitalimentaire.last)
  end

  test "should show kitalimentaire" do
    get kitalimentaire_url(@kitalimentaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_kitalimentaire_url(@kitalimentaire)
    assert_response :success
  end

  test "should update kitalimentaire" do
    patch kitalimentaire_url(@kitalimentaire), params: { kitalimentaire: { age: @kitalimentaire.age, arrondissement: @kitalimentaire.arrondissement, chef_id: @kitalimentaire.chef_id, cnamgs_id: @kitalimentaire.cnamgs_id, compteur_id: @kitalimentaire.compteur_id, contacts: @kitalimentaire.contacts, eligible_id: @kitalimentaire.eligible_id, nom: @kitalimentaire.nom, nombre: @kitalimentaire.nombre, photo: @kitalimentaire.photo, piece: @kitalimentaire.piece, profession: @kitalimentaire.profession, province_id: @kitalimentaire.province_id, quartier: @kitalimentaire.quartier, sex_id: @kitalimentaire.sex_id, ville: @kitalimentaire.ville } }
    assert_redirected_to kitalimentaire_url(@kitalimentaire)
  end

  test "should destroy kitalimentaire" do
    assert_difference('Kitalimentaire.count', -1) do
      delete kitalimentaire_url(@kitalimentaire)
    end

    assert_redirected_to kitalimentaires_url
  end
end
