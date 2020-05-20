require 'test_helper'

class CompteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compteur = compteurs(:one)
  end

  test "should get index" do
    get compteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_compteur_url
    assert_response :success
  end

  test "should create compteur" do
    assert_difference('Compteur.count') do
      post compteurs_url, params: { compteur: { description: @compteur.description, libelle: @compteur.libelle } }
    end

    assert_redirected_to compteur_url(Compteur.last)
  end

  test "should show compteur" do
    get compteur_url(@compteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_compteur_url(@compteur)
    assert_response :success
  end

  test "should update compteur" do
    patch compteur_url(@compteur), params: { compteur: { description: @compteur.description, libelle: @compteur.libelle } }
    assert_redirected_to compteur_url(@compteur)
  end

  test "should destroy compteur" do
    assert_difference('Compteur.count', -1) do
      delete compteur_url(@compteur)
    end

    assert_redirected_to compteurs_url
  end
end
