require "application_system_test_case"

class HabitatsTest < ApplicationSystemTestCase
  setup do
    @habitat = habitats(:one)
  end

  test "visiting the index" do
    visit habitats_url
    assert_selector "h1", text: "Habitats"
  end

  test "creating a Habitat" do
    visit habitats_url
    click_on "New Habitat"

    fill_in "Description", with: @habitat.description
    fill_in "Nom", with: @habitat.nom
    click_on "Create Habitat"

    assert_text "Habitat was successfully created"
    click_on "Back"
  end

  test "updating a Habitat" do
    visit habitats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @habitat.description
    fill_in "Nom", with: @habitat.nom
    click_on "Update Habitat"

    assert_text "Habitat was successfully updated"
    click_on "Back"
  end

  test "destroying a Habitat" do
    visit habitats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Habitat was successfully destroyed"
  end
end
