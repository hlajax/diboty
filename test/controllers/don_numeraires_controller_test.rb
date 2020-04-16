require 'test_helper'

class DonNumerairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @don_numeraire = don_numeraires(:one)
  end

  test "should get index" do
    get don_numeraires_url
    assert_response :success
  end

  test "should get new" do
    get new_don_numeraire_url
    assert_response :success
  end

  test "should create don_numeraire" do
    assert_difference('DonNumeraire.count') do
      post don_numeraires_url, params: { don_numeraire: { adresse: @don_numeraire.adresse, date: @don_numeraire.date, email: @don_numeraire.email, montant: @don_numeraire.montant, nature_id: @don_numeraire.nature_id, nom: @don_numeraire.nom, nom_entreprise: @don_numeraire.nom_entreprise, numero_de_telephone: @don_numeraire.numero_de_telephone } }
    end

    assert_redirected_to don_numeraire_url(DonNumeraire.last)
  end

  test "should show don_numeraire" do
    get don_numeraire_url(@don_numeraire)
    assert_response :success
  end

  test "should get edit" do
    get edit_don_numeraire_url(@don_numeraire)
    assert_response :success
  end

  test "should update don_numeraire" do
    patch don_numeraire_url(@don_numeraire), params: { don_numeraire: { adresse: @don_numeraire.adresse, date: @don_numeraire.date, email: @don_numeraire.email, montant: @don_numeraire.montant, nature_id: @don_numeraire.nature_id, nom: @don_numeraire.nom, nom_entreprise: @don_numeraire.nom_entreprise, numero_de_telephone: @don_numeraire.numero_de_telephone } }
    assert_redirected_to don_numeraire_url(@don_numeraire)
  end

  test "should destroy don_numeraire" do
    assert_difference('DonNumeraire.count', -1) do
      delete don_numeraire_url(@don_numeraire)
    end

    assert_redirected_to don_numeraires_url
  end
end
