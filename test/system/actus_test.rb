require "application_system_test_case"

class ActusTest < ApplicationSystemTestCase
  setup do
    @actu = actus(:one)
  end

  test "visiting the index" do
    visit actus_url
    assert_selector "h1", text: "Actus"
  end

  test "creating a Actu" do
    visit actus_url
    click_on "New Actu"

    fill_in "Nom", with: @actu.nom
    click_on "Create Actu"

    assert_text "Actu was successfully created"
    click_on "Back"
  end

  test "updating a Actu" do
    visit actus_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @actu.nom
    click_on "Update Actu"

    assert_text "Actu was successfully updated"
    click_on "Back"
  end

  test "destroying a Actu" do
    visit actus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actu was successfully destroyed"
  end
end
