require "application_system_test_case"

class DonsTest < ApplicationSystemTestCase
  setup do
    @don = dons(:one)
  end

  test "visiting the index" do
    visit dons_url
    assert_selector "h1", text: "Dons"
  end

  test "creating a Don" do
    visit dons_url
    click_on "New Don"

    fill_in "Adresse", with: @don.adresse
    fill_in "Date", with: @don.date
    fill_in "Detail", with: @don.detail
    fill_in "Email", with: @don.email
    fill_in "Nom", with: @don.nom
    fill_in "Nom entreprise", with: @don.nom_entreprise
    fill_in "Numero de telephone", with: @don.numero_de_telephone
    click_on "Create Don"

    assert_text "Don was successfully created"
    click_on "Back"
  end

  test "updating a Don" do
    visit dons_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @don.adresse
    fill_in "Date", with: @don.date
    fill_in "Detail", with: @don.detail
    fill_in "Email", with: @don.email
    fill_in "Nom", with: @don.nom
    fill_in "Nom entreprise", with: @don.nom_entreprise
    fill_in "Numero de telephone", with: @don.numero_de_telephone
    click_on "Update Don"

    assert_text "Don was successfully updated"
    click_on "Back"
  end

  test "destroying a Don" do
    visit dons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Don was successfully destroyed"
  end
end
