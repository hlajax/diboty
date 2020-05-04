require "application_system_test_case"

class SiegesTest < ApplicationSystemTestCase
  setup do
    @siege = sieges(:one)
  end

  test "visiting the index" do
    visit sieges_url
    assert_selector "h1", text: "Sieges"
  end

  test "creating a Siege" do
    visit sieges_url
    click_on "New Siege"

    fill_in "Nom", with: @siege.nom
    fill_in "Slug", with: @siege.slug
    click_on "Create Siege"

    assert_text "Siege was successfully created"
    click_on "Back"
  end

  test "updating a Siege" do
    visit sieges_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @siege.nom
    fill_in "Slug", with: @siege.slug
    click_on "Update Siege"

    assert_text "Siege was successfully updated"
    click_on "Back"
  end

  test "destroying a Siege" do
    visit sieges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Siege was successfully destroyed"
  end
end
