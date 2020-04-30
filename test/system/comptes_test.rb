require "application_system_test_case"

class ComptesTest < ApplicationSystemTestCase
  setup do
    @compte = comptes(:one)
  end

  test "visiting the index" do
    visit comptes_url
    assert_selector "h1", text: "Comptes"
  end

  test "creating a Compte" do
    visit comptes_url
    click_on "New Compte"

    fill_in "Nom", with: @compte.nom
    click_on "Create Compte"

    assert_text "Compte was successfully created"
    click_on "Back"
  end

  test "updating a Compte" do
    visit comptes_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @compte.nom
    click_on "Update Compte"

    assert_text "Compte was successfully updated"
    click_on "Back"
  end

  test "destroying a Compte" do
    visit comptes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compte was successfully destroyed"
  end
end
