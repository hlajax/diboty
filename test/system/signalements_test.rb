require "application_system_test_case"

class SignalementsTest < ApplicationSystemTestCase
  setup do
    @signalement = signalements(:one)
  end

  test "visiting the index" do
    visit signalements_url
    assert_selector "h1", text: "Signalements"
  end

  test "creating a Signalement" do
    visit signalements_url
    click_on "New Signalement"

    fill_in "Contact whatsapp", with: @signalement.contact_whatsapp
    fill_in "Date", with: @signalement.date
    fill_in "Enfants", with: @signalement.enfants
    fill_in "Nom", with: @signalement.nom
    fill_in "Passeport", with: @signalement.passeport
    fill_in "Pays", with: @signalement.pays
    fill_in "Pieces jointes", with: @signalement.pieces_jointes
    fill_in "Raison du sejour", with: @signalement.raison_du_sejour
    fill_in "Sexe", with: @signalement.sexe_id
    fill_in "Ville", with: @signalement.ville
    click_on "Create Signalement"

    assert_text "Signalement was successfully created"
    click_on "Back"
  end

  test "updating a Signalement" do
    visit signalements_url
    click_on "Edit", match: :first

    fill_in "Contact whatsapp", with: @signalement.contact_whatsapp
    fill_in "Date", with: @signalement.date
    fill_in "Enfants", with: @signalement.enfants
    fill_in "Nom", with: @signalement.nom
    fill_in "Passeport", with: @signalement.passeport
    fill_in "Pays", with: @signalement.pays
    fill_in "Pieces jointes", with: @signalement.pieces_jointes
    fill_in "Raison du sejour", with: @signalement.raison_du_sejour
    fill_in "Sexe", with: @signalement.sexe_id
    fill_in "Ville", with: @signalement.ville
    click_on "Update Signalement"

    assert_text "Signalement was successfully updated"
    click_on "Back"
  end

  test "destroying a Signalement" do
    visit signalements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signalement was successfully destroyed"
  end
end
