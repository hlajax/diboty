require "application_system_test_case"

class PieceLocatairesTest < ApplicationSystemTestCase
  setup do
    @piece_locataire = piece_locataires(:one)
  end

  test "visiting the index" do
    visit piece_locataires_url
    assert_selector "h1", text: "Piece Locataires"
  end

  test "creating a Piece locataire" do
    visit piece_locataires_url
    click_on "New Piece Locataire"

    fill_in "Description", with: @piece_locataire.description
    fill_in "Nom", with: @piece_locataire.nom
    fill_in "Slug", with: @piece_locataire.slug
    click_on "Create Piece locataire"

    assert_text "Piece locataire was successfully created"
    click_on "Back"
  end

  test "updating a Piece locataire" do
    visit piece_locataires_url
    click_on "Edit", match: :first

    fill_in "Description", with: @piece_locataire.description
    fill_in "Nom", with: @piece_locataire.nom
    fill_in "Slug", with: @piece_locataire.slug
    click_on "Update Piece locataire"

    assert_text "Piece locataire was successfully updated"
    click_on "Back"
  end

  test "destroying a Piece locataire" do
    visit piece_locataires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piece locataire was successfully destroyed"
  end
end
