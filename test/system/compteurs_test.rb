require "application_system_test_case"

class CompteursTest < ApplicationSystemTestCase
  setup do
    @compteur = compteurs(:one)
  end

  test "visiting the index" do
    visit compteurs_url
    assert_selector "h1", text: "Compteurs"
  end

  test "creating a Compteur" do
    visit compteurs_url
    click_on "New Compteur"

    fill_in "Description", with: @compteur.description
    fill_in "Libelle", with: @compteur.libelle
    click_on "Create Compteur"

    assert_text "Compteur was successfully created"
    click_on "Back"
  end

  test "updating a Compteur" do
    visit compteurs_url
    click_on "Edit", match: :first

    fill_in "Description", with: @compteur.description
    fill_in "Libelle", with: @compteur.libelle
    click_on "Update Compteur"

    assert_text "Compteur was successfully updated"
    click_on "Back"
  end

  test "destroying a Compteur" do
    visit compteurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compteur was successfully destroyed"
  end
end
