require "application_system_test_case"

class LoyerentreprisesTest < ApplicationSystemTestCase
  setup do
    @loyerentreprise = loyerentreprises(:one)
  end

  test "visiting the index" do
    visit loyerentreprises_url
    assert_selector "h1", text: "Loyerentreprises"
  end

  test "creating a Loyerentreprise" do
    visit loyerentreprises_url
    click_on "New Loyerentreprise"

    fill_in "Cnamgs", with: @loyerentreprise.cnamgs
    fill_in "Cnss", with: @loyerentreprise.cnss
    fill_in "Date de naissance proprietaire", with: @loyerentreprise.date_de_naissance_proprietaire
    fill_in "Email", with: @loyerentreprise.email
    fill_in "Email proprietaire", with: @loyerentreprise.email_proprietaire
    fill_in "Fiche", with: @loyerentreprise.fiche
    fill_in "Lieu de naissance proprietaire", with: @loyerentreprise.lieu_de_naissance_proprietaire
    fill_in "Lieu de residence proprietaire", with: @loyerentreprise.lieu_de_residence_proprietaire
    fill_in "Nif", with: @loyerentreprise.nif
    fill_in "Nom proprietaire", with: @loyerentreprise.nom_proprietaire
    fill_in "Raison sociale", with: @loyerentreprise.raison_sociale
    fill_in "Rccm", with: @loyerentreprise.rccm
    fill_in "Secteur", with: @loyerentreprise.secteur
    fill_in "Telephones", with: @loyerentreprise.telephones
    fill_in "Telephones proprietaire", with: @loyerentreprise.telephones_proprietaire
    click_on "Create Loyerentreprise"

    assert_text "Loyerentreprise was successfully created"
    click_on "Back"
  end

  test "updating a Loyerentreprise" do
    visit loyerentreprises_url
    click_on "Edit", match: :first

    fill_in "Cnamgs", with: @loyerentreprise.cnamgs
    fill_in "Cnss", with: @loyerentreprise.cnss
    fill_in "Date de naissance proprietaire", with: @loyerentreprise.date_de_naissance_proprietaire
    fill_in "Email", with: @loyerentreprise.email
    fill_in "Email proprietaire", with: @loyerentreprise.email_proprietaire
    fill_in "Fiche", with: @loyerentreprise.fiche
    fill_in "Lieu de naissance proprietaire", with: @loyerentreprise.lieu_de_naissance_proprietaire
    fill_in "Lieu de residence proprietaire", with: @loyerentreprise.lieu_de_residence_proprietaire
    fill_in "Nif", with: @loyerentreprise.nif
    fill_in "Nom proprietaire", with: @loyerentreprise.nom_proprietaire
    fill_in "Raison sociale", with: @loyerentreprise.raison_sociale
    fill_in "Rccm", with: @loyerentreprise.rccm
    fill_in "Secteur", with: @loyerentreprise.secteur
    fill_in "Telephones", with: @loyerentreprise.telephones
    fill_in "Telephones proprietaire", with: @loyerentreprise.telephones_proprietaire
    click_on "Update Loyerentreprise"

    assert_text "Loyerentreprise was successfully updated"
    click_on "Back"
  end

  test "destroying a Loyerentreprise" do
    visit loyerentreprises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loyerentreprise was successfully destroyed"
  end
end
