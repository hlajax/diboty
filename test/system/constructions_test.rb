require "application_system_test_case"

class ConstructionsTest < ApplicationSystemTestCase
  setup do
    @construction = constructions(:one)
  end

  test "visiting the index" do
    visit constructions_url
    assert_selector "h1", text: "Constructions"
  end

  test "creating a Construction" do
    visit constructions_url
    click_on "New Construction"

    fill_in "Description", with: @construction.description
    fill_in "Nom", with: @construction.nom
    fill_in "Slug", with: @construction.slug
    click_on "Create Construction"

    assert_text "Construction was successfully created"
    click_on "Back"
  end

  test "updating a Construction" do
    visit constructions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @construction.description
    fill_in "Nom", with: @construction.nom
    fill_in "Slug", with: @construction.slug
    click_on "Update Construction"

    assert_text "Construction was successfully updated"
    click_on "Back"
  end

  test "destroying a Construction" do
    visit constructions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Construction was successfully destroyed"
  end
end
