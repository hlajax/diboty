require "application_system_test_case"

class ArrondissementsTest < ApplicationSystemTestCase
  setup do
    @arrondissement = arrondissements(:one)
  end

  test "visiting the index" do
    visit arrondissements_url
    assert_selector "h1", text: "Arrondissements"
  end

  test "creating a Arrondissement" do
    visit arrondissements_url
    click_on "New Arrondissement"

    fill_in "Description", with: @arrondissement.description
    fill_in "Nom", with: @arrondissement.nom
    fill_in "Slug", with: @arrondissement.slug
    click_on "Create Arrondissement"

    assert_text "Arrondissement was successfully created"
    click_on "Back"
  end

  test "updating a Arrondissement" do
    visit arrondissements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @arrondissement.description
    fill_in "Nom", with: @arrondissement.nom
    fill_in "Slug", with: @arrondissement.slug
    click_on "Update Arrondissement"

    assert_text "Arrondissement was successfully updated"
    click_on "Back"
  end

  test "destroying a Arrondissement" do
    visit arrondissements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arrondissement was successfully destroyed"
  end
end
