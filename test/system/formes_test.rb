require "application_system_test_case"

class FormesTest < ApplicationSystemTestCase
  setup do
    @forme = formes(:one)
  end

  test "visiting the index" do
    visit formes_url
    assert_selector "h1", text: "Formes"
  end

  test "creating a Forme" do
    visit formes_url
    click_on "New Forme"

    fill_in "Nom", with: @forme.nom
    fill_in "Slug", with: @forme.slug
    click_on "Create Forme"

    assert_text "Forme was successfully created"
    click_on "Back"
  end

  test "updating a Forme" do
    visit formes_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @forme.nom
    fill_in "Slug", with: @forme.slug
    click_on "Update Forme"

    assert_text "Forme was successfully updated"
    click_on "Back"
  end

  test "destroying a Forme" do
    visit formes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Forme was successfully destroyed"
  end
end
