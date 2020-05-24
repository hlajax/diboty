require "application_system_test_case"

class LeskitsTest < ApplicationSystemTestCase
  setup do
    @leskit = leskits(:one)
  end

  test "visiting the index" do
    visit leskits_url
    assert_selector "h1", text: "Leskits"
  end

  test "creating a Leskit" do
    visit leskits_url
    click_on "New Leskit"

    fill_in "Prix", with: @leskit.prix
    fill_in "Titre", with: @leskit.titre
    click_on "Create Leskit"

    assert_text "Leskit was successfully created"
    click_on "Back"
  end

  test "updating a Leskit" do
    visit leskits_url
    click_on "Edit", match: :first

    fill_in "Prix", with: @leskit.prix
    fill_in "Titre", with: @leskit.titre
    click_on "Update Leskit"

    assert_text "Leskit was successfully updated"
    click_on "Back"
  end

  test "destroying a Leskit" do
    visit leskits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Leskit was successfully destroyed"
  end
end
