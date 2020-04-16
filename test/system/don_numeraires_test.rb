require "application_system_test_case"

class DonNumerairesTest < ApplicationSystemTestCase
  setup do
    @don_numeraire = don_numeraires(:one)
  end

  test "visiting the index" do
    visit don_numeraires_url
    assert_selector "h1", text: "Don Numeraires"
  end

  test "creating a Don numeraire" do
    visit don_numeraires_url
    click_on "New Don Numeraire"

    fill_in "Adresse", with: @don_numeraire.adresse
    fill_in "Date", with: @don_numeraire.date
    fill_in "Email", with: @don_numeraire.email
    fill_in "Montant", with: @don_numeraire.montant
    fill_in "Nature", with: @don_numeraire.nature_id
    fill_in "Nom", with: @don_numeraire.nom
    fill_in "Nom entreprise", with: @don_numeraire.nom_entreprise
    fill_in "Numero de telephone", with: @don_numeraire.numero_de_telephone
    click_on "Create Don numeraire"

    assert_text "Don numeraire was successfully created"
    click_on "Back"
  end

  test "updating a Don numeraire" do
    visit don_numeraires_url
    click_on "Edit", match: :first

    fill_in "Adresse", with: @don_numeraire.adresse
    fill_in "Date", with: @don_numeraire.date
    fill_in "Email", with: @don_numeraire.email
    fill_in "Montant", with: @don_numeraire.montant
    fill_in "Nature", with: @don_numeraire.nature_id
    fill_in "Nom", with: @don_numeraire.nom
    fill_in "Nom entreprise", with: @don_numeraire.nom_entreprise
    fill_in "Numero de telephone", with: @don_numeraire.numero_de_telephone
    click_on "Update Don numeraire"

    assert_text "Don numeraire was successfully updated"
    click_on "Back"
  end

  test "destroying a Don numeraire" do
    visit don_numeraires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Don numeraire was successfully destroyed"
  end
end
