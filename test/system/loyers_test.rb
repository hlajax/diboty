require "application_system_test_case"

class LoyersTest < ApplicationSystemTestCase
  setup do
    @loyer = loyers(:one)
  end

  test "visiting the index" do
    visit loyers_url
    assert_selector "h1", text: "Loyers"
  end

  test "creating a Loyer" do
    visit loyers_url
    click_on "New Loyer"

    fill_in "Cnamgs locataire", with: @loyer.cnamgs_locataire
    fill_in "Cnss locataire", with: @loyer.cnss_locataire
    fill_in "Date de naissance locataire", with: @loyer.date_de_naissance_locataire
    fill_in "Date de naissance proprietaire", with: @loyer.date_de_naissance_proprietaire
    fill_in "Email locataire", with: @loyer.email_locataire
    fill_in "Email proprietaire", with: @loyer.email_proprietaire
    fill_in "Employeur locataire", with: @loyer.employeur_locataire
    fill_in "Justification locataire", with: @loyer.justification_locataire
    fill_in "Lieu de naissance locataire", with: @loyer.lieu_de_naissance_locataire
    fill_in "Lieu de naissance proprietaire", with: @loyer.lieu_de_naissance_proprietaire
    fill_in "Lieu de residence proprietaire", with: @loyer.lieu_de_residence_proprietaire
    fill_in "Nationalite locataire", with: @loyer.nationalite_locataire
    fill_in "Nom locataire", with: @loyer.nom_locataire
    fill_in "Nom proprietaire", with: @loyer.nom_proprietaire
    fill_in "Profession locataire", with: @loyer.profession_locataire
    fill_in "Secteur locataire", with: @loyer.secteur_locataire
    fill_in "Telephones locataire", with: @loyer.telephones_locataire
    fill_in "Telephones proprietaire", with: @loyer.telephones_proprietaire
    click_on "Create Loyer"

    assert_text "Loyer was successfully created"
    click_on "Back"
  end

  test "updating a Loyer" do
    visit loyers_url
    click_on "Edit", match: :first

    fill_in "Cnamgs locataire", with: @loyer.cnamgs_locataire
    fill_in "Cnss locataire", with: @loyer.cnss_locataire
    fill_in "Date de naissance locataire", with: @loyer.date_de_naissance_locataire
    fill_in "Date de naissance proprietaire", with: @loyer.date_de_naissance_proprietaire
    fill_in "Email locataire", with: @loyer.email_locataire
    fill_in "Email proprietaire", with: @loyer.email_proprietaire
    fill_in "Employeur locataire", with: @loyer.employeur_locataire
    fill_in "Justification locataire", with: @loyer.justification_locataire
    fill_in "Lieu de naissance locataire", with: @loyer.lieu_de_naissance_locataire
    fill_in "Lieu de naissance proprietaire", with: @loyer.lieu_de_naissance_proprietaire
    fill_in "Lieu de residence proprietaire", with: @loyer.lieu_de_residence_proprietaire
    fill_in "Nationalite locataire", with: @loyer.nationalite_locataire
    fill_in "Nom locataire", with: @loyer.nom_locataire
    fill_in "Nom proprietaire", with: @loyer.nom_proprietaire
    fill_in "Profession locataire", with: @loyer.profession_locataire
    fill_in "Secteur locataire", with: @loyer.secteur_locataire
    fill_in "Telephones locataire", with: @loyer.telephones_locataire
    fill_in "Telephones proprietaire", with: @loyer.telephones_proprietaire
    click_on "Update Loyer"

    assert_text "Loyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Loyer" do
    visit loyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loyer was successfully destroyed"
  end
end
