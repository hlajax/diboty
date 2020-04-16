require 'test_helper'

class LoyerentreprisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loyerentreprise = loyerentreprises(:one)
  end

  test "should get index" do
    get loyerentreprises_url
    assert_response :success
  end

  test "should get new" do
    get new_loyerentreprise_url
    assert_response :success
  end

  test "should create loyerentreprise" do
    assert_difference('Loyerentreprise.count') do
      post loyerentreprises_url, params: { loyerentreprise: { cnamgs: @loyerentreprise.cnamgs, cnss: @loyerentreprise.cnss, date_de_naissance_proprietaire: @loyerentreprise.date_de_naissance_proprietaire, email: @loyerentreprise.email, email_proprietaire: @loyerentreprise.email_proprietaire, fiche: @loyerentreprise.fiche, lieu_de_naissance_proprietaire: @loyerentreprise.lieu_de_naissance_proprietaire, lieu_de_residence_proprietaire: @loyerentreprise.lieu_de_residence_proprietaire, nif: @loyerentreprise.nif, nom_proprietaire: @loyerentreprise.nom_proprietaire, raison_sociale: @loyerentreprise.raison_sociale, rccm: @loyerentreprise.rccm, secteur: @loyerentreprise.secteur, telephones: @loyerentreprise.telephones, telephones_proprietaire: @loyerentreprise.telephones_proprietaire } }
    end

    assert_redirected_to loyerentreprise_url(Loyerentreprise.last)
  end

  test "should show loyerentreprise" do
    get loyerentreprise_url(@loyerentreprise)
    assert_response :success
  end

  test "should get edit" do
    get edit_loyerentreprise_url(@loyerentreprise)
    assert_response :success
  end

  test "should update loyerentreprise" do
    patch loyerentreprise_url(@loyerentreprise), params: { loyerentreprise: { cnamgs: @loyerentreprise.cnamgs, cnss: @loyerentreprise.cnss, date_de_naissance_proprietaire: @loyerentreprise.date_de_naissance_proprietaire, email: @loyerentreprise.email, email_proprietaire: @loyerentreprise.email_proprietaire, fiche: @loyerentreprise.fiche, lieu_de_naissance_proprietaire: @loyerentreprise.lieu_de_naissance_proprietaire, lieu_de_residence_proprietaire: @loyerentreprise.lieu_de_residence_proprietaire, nif: @loyerentreprise.nif, nom_proprietaire: @loyerentreprise.nom_proprietaire, raison_sociale: @loyerentreprise.raison_sociale, rccm: @loyerentreprise.rccm, secteur: @loyerentreprise.secteur, telephones: @loyerentreprise.telephones, telephones_proprietaire: @loyerentreprise.telephones_proprietaire } }
    assert_redirected_to loyerentreprise_url(@loyerentreprise)
  end

  test "should destroy loyerentreprise" do
    assert_difference('Loyerentreprise.count', -1) do
      delete loyerentreprise_url(@loyerentreprise)
    end

    assert_redirected_to loyerentreprises_url
  end
end
