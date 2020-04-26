require "application_system_test_case"

class DistribuesTest < ApplicationSystemTestCase
  setup do
    @distribue = distribues(:one)
  end

  test "visiting the index" do
    visit distribues_url
    assert_selector "h1", text: "Distribues"
  end

  test "creating a Distribue" do
    visit distribues_url
    click_on "New Distribue"

    fill_in "Titre", with: @distribue.titre
    click_on "Create Distribue"

    assert_text "Distribue was successfully created"
    click_on "Back"
  end

  test "updating a Distribue" do
    visit distribues_url
    click_on "Edit", match: :first

    fill_in "Titre", with: @distribue.titre
    click_on "Update Distribue"

    assert_text "Distribue was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribue" do
    visit distribues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribue was successfully destroyed"
  end
end
