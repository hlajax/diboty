require "application_system_test_case"

class KitalimentairesTest < ApplicationSystemTestCase
  setup do
    @kitalimentaire = kitalimentaires(:one)
  end

  test "visiting the index" do
    visit kitalimentaires_url
    assert_selector "h1", text: "Kitalimentaires"
  end

  test "creating a Kitalimentaire" do
    visit kitalimentaires_url
    click_on "New Kitalimentaire"

    fill_in "Age", with: @kitalimentaire.age
    fill_in "Arrondissement", with: @kitalimentaire.arrondissement
    fill_in "Chef", with: @kitalimentaire.chef_id
    fill_in "Cnamgs", with: @kitalimentaire.cnamgs_id
    fill_in "Compteur", with: @kitalimentaire.compteur_id
    fill_in "Contacts", with: @kitalimentaire.contacts
    fill_in "Eligible", with: @kitalimentaire.eligible_id
    fill_in "Nom", with: @kitalimentaire.nom
    fill_in "Nombre", with: @kitalimentaire.nombre
    fill_in "Photo", with: @kitalimentaire.photo
    fill_in "Piece", with: @kitalimentaire.piece
    fill_in "Profession", with: @kitalimentaire.profession
    fill_in "Province", with: @kitalimentaire.province_id
    fill_in "Quartier", with: @kitalimentaire.quartier
    fill_in "Sex", with: @kitalimentaire.sex_id
    fill_in "Ville", with: @kitalimentaire.ville
    click_on "Create Kitalimentaire"

    assert_text "Kitalimentaire was successfully created"
    click_on "Back"
  end

  test "updating a Kitalimentaire" do
    visit kitalimentaires_url
    click_on "Edit", match: :first

    fill_in "Age", with: @kitalimentaire.age
    fill_in "Arrondissement", with: @kitalimentaire.arrondissement
    fill_in "Chef", with: @kitalimentaire.chef_id
    fill_in "Cnamgs", with: @kitalimentaire.cnamgs_id
    fill_in "Compteur", with: @kitalimentaire.compteur_id
    fill_in "Contacts", with: @kitalimentaire.contacts
    fill_in "Eligible", with: @kitalimentaire.eligible_id
    fill_in "Nom", with: @kitalimentaire.nom
    fill_in "Nombre", with: @kitalimentaire.nombre
    fill_in "Photo", with: @kitalimentaire.photo
    fill_in "Piece", with: @kitalimentaire.piece
    fill_in "Profession", with: @kitalimentaire.profession
    fill_in "Province", with: @kitalimentaire.province_id
    fill_in "Quartier", with: @kitalimentaire.quartier
    fill_in "Sex", with: @kitalimentaire.sex_id
    fill_in "Ville", with: @kitalimentaire.ville
    click_on "Update Kitalimentaire"

    assert_text "Kitalimentaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Kitalimentaire" do
    visit kitalimentaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kitalimentaire was successfully destroyed"
  end
end
