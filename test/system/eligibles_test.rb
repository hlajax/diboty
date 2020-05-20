require "application_system_test_case"

class EligiblesTest < ApplicationSystemTestCase
  setup do
    @eligible = eligibles(:one)
  end

  test "visiting the index" do
    visit eligibles_url
    assert_selector "h1", text: "Eligibles"
  end

  test "creating a Eligible" do
    visit eligibles_url
    click_on "New Eligible"

    fill_in "Description", with: @eligible.description
    fill_in "Libelle", with: @eligible.libelle
    click_on "Create Eligible"

    assert_text "Eligible was successfully created"
    click_on "Back"
  end

  test "updating a Eligible" do
    visit eligibles_url
    click_on "Edit", match: :first

    fill_in "Description", with: @eligible.description
    fill_in "Libelle", with: @eligible.libelle
    click_on "Update Eligible"

    assert_text "Eligible was successfully updated"
    click_on "Back"
  end

  test "destroying a Eligible" do
    visit eligibles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eligible was successfully destroyed"
  end
end
