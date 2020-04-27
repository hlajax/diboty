require "application_system_test_case"

class BanquesTest < ApplicationSystemTestCase
  setup do
    @banque = banques(:one)
  end

  test "visiting the index" do
    visit banques_url
    assert_selector "h1", text: "Banques"
  end

  test "creating a Banque" do
    visit banques_url
    click_on "New Banque"

    fill_in "Actu", with: @banque.actu_id
    fill_in "Nombre de personnes", with: @banque.nombre_de_personnes
    fill_in "Nombre handicapes", with: @banque.nombre_handicapes
    fill_in "Nombre jeune", with: @banque.nombre_jeune
    fill_in "Nombre jeune mere", with: @banque.nombre_jeune_mere
    fill_in "Nombre nourisson", with: @banque.nombre_nourisson
    fill_in "Nombre vieux", with: @banque.nombre_vieux
    fill_in "Situation", with: @banque.situation_id
    fill_in "Statut", with: @banque.statut_id
    click_on "Create Banque"

    assert_text "Banque was successfully created"
    click_on "Back"
  end

  test "updating a Banque" do
    visit banques_url
    click_on "Edit", match: :first

    fill_in "Actu", with: @banque.actu_id
    fill_in "Nombre de personnes", with: @banque.nombre_de_personnes
    fill_in "Nombre handicapes", with: @banque.nombre_handicapes
    fill_in "Nombre jeune", with: @banque.nombre_jeune
    fill_in "Nombre jeune mere", with: @banque.nombre_jeune_mere
    fill_in "Nombre nourisson", with: @banque.nombre_nourisson
    fill_in "Nombre vieux", with: @banque.nombre_vieux
    fill_in "Situation", with: @banque.situation_id
    fill_in "Statut", with: @banque.statut_id
    click_on "Update Banque"

    assert_text "Banque was successfully updated"
    click_on "Back"
  end

  test "destroying a Banque" do
    visit banques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banque was successfully destroyed"
  end
end
