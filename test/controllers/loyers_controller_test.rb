require 'test_helper'

class LoyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loyer = loyers(:one)
  end

  test "should get index" do
    get loyers_url
    assert_response :success
  end

  test "should get new" do
    get new_loyer_url
    assert_response :success
  end

  test "should create loyer" do
    assert_difference('Loyer.count') do
      post loyers_url, params: { loyer: { cnamgs_locataire: @loyer.cnamgs_locataire, cnss_locataire: @loyer.cnss_locataire, date_de_naissance_locataire: @loyer.date_de_naissance_locataire, date_de_naissance_proprietaire: @loyer.date_de_naissance_proprietaire, email_locataire: @loyer.email_locataire, email_proprietaire: @loyer.email_proprietaire, employeur_locataire: @loyer.employeur_locataire, justification_locataire: @loyer.justification_locataire, lieu_de_naissance_locataire: @loyer.lieu_de_naissance_locataire, lieu_de_naissance_proprietaire: @loyer.lieu_de_naissance_proprietaire, lieu_de_residence_proprietaire: @loyer.lieu_de_residence_proprietaire, nationalite_locataire: @loyer.nationalite_locataire, nom_locataire: @loyer.nom_locataire, nom_proprietaire: @loyer.nom_proprietaire, profession_locataire: @loyer.profession_locataire, secteur_locataire: @loyer.secteur_locataire, telephones_locataire: @loyer.telephones_locataire, telephones_proprietaire: @loyer.telephones_proprietaire } }
    end

    assert_redirected_to loyer_url(Loyer.last)
  end

  test "should show loyer" do
    get loyer_url(@loyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_loyer_url(@loyer)
    assert_response :success
  end

  test "should update loyer" do
    patch loyer_url(@loyer), params: { loyer: { cnamgs_locataire: @loyer.cnamgs_locataire, cnss_locataire: @loyer.cnss_locataire, date_de_naissance_locataire: @loyer.date_de_naissance_locataire, date_de_naissance_proprietaire: @loyer.date_de_naissance_proprietaire, email_locataire: @loyer.email_locataire, email_proprietaire: @loyer.email_proprietaire, employeur_locataire: @loyer.employeur_locataire, justification_locataire: @loyer.justification_locataire, lieu_de_naissance_locataire: @loyer.lieu_de_naissance_locataire, lieu_de_naissance_proprietaire: @loyer.lieu_de_naissance_proprietaire, lieu_de_residence_proprietaire: @loyer.lieu_de_residence_proprietaire, nationalite_locataire: @loyer.nationalite_locataire, nom_locataire: @loyer.nom_locataire, nom_proprietaire: @loyer.nom_proprietaire, profession_locataire: @loyer.profession_locataire, secteur_locataire: @loyer.secteur_locataire, telephones_locataire: @loyer.telephones_locataire, telephones_proprietaire: @loyer.telephones_proprietaire } }
    assert_redirected_to loyer_url(@loyer)
  end

  test "should destroy loyer" do
    assert_difference('Loyer.count', -1) do
      delete loyer_url(@loyer)
    end

    assert_redirected_to loyers_url
  end
end
