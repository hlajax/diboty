require "application_system_test_case"

class NaturesTest < ApplicationSystemTestCase
  setup do
    @nature = natures(:one)
  end

  test "visiting the index" do
    visit natures_url
    assert_selector "h1", text: "Natures"
  end

  test "creating a Nature" do
    visit natures_url
    click_on "New Nature"

    fill_in "Detail", with: @nature.detail
    fill_in "Nom", with: @nature.nom
    fill_in "Slug", with: @nature.slug
    click_on "Create Nature"

    assert_text "Nature was successfully created"
    click_on "Back"
  end

  test "updating a Nature" do
    visit natures_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @nature.detail
    fill_in "Nom", with: @nature.nom
    fill_in "Slug", with: @nature.slug
    click_on "Update Nature"

    assert_text "Nature was successfully updated"
    click_on "Back"
  end

  test "destroying a Nature" do
    visit natures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nature was successfully destroyed"
  end
end
