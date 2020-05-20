require "application_system_test_case"

class CnamsTest < ApplicationSystemTestCase
  setup do
    @cnam = cnams(:one)
  end

  test "visiting the index" do
    visit cnams_url
    assert_selector "h1", text: "Cnams"
  end

  test "creating a Cnam" do
    visit cnams_url
    click_on "New Cnam"

    fill_in "Description", with: @cnam.description
    fill_in "Libelle", with: @cnam.libelle
    click_on "Create Cnam"

    assert_text "Cnam was successfully created"
    click_on "Back"
  end

  test "updating a Cnam" do
    visit cnams_url
    click_on "Edit", match: :first

    fill_in "Description", with: @cnam.description
    fill_in "Libelle", with: @cnam.libelle
    click_on "Update Cnam"

    assert_text "Cnam was successfully updated"
    click_on "Back"
  end

  test "destroying a Cnam" do
    visit cnams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cnam was successfully destroyed"
  end
end
