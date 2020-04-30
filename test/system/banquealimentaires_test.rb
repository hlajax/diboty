require "application_system_test_case"

class BanquealimentairesTest < ApplicationSystemTestCase
  setup do
    @banquealimentaire = banquealimentaires(:one)
  end

  test "visiting the index" do
    visit banquealimentaires_url
    assert_selector "h1", text: "Banquealimentaires"
  end

  test "creating a Banquealimentaire" do
    visit banquealimentaires_url
    click_on "New Banquealimentaire"

    fill_in "Actu", with: @banquealimentaire.actu_id
    fill_in "Chef", with: @banquealimentaire.chef_id
    fill_in "Compte", with: @banquealimentaire.compte_id
    fill_in "Distribue", with: @banquealimentaire.distribue_id
    fill_in "Nombre de personnes", with: @banquealimentaire.nombre_de_personnes
    fill_in "Nombre handicapes", with: @banquealimentaire.nombre_handicapes
    fill_in "Nombre jeune", with: @banquealimentaire.nombre_jeune
    fill_in "Nombre jeune mere", with: @banquealimentaire.nombre_jeune_mere
    fill_in "Nombre nourisson", with: @banquealimentaire.nombre_nourisson
    fill_in "Nombre vieux", with: @banquealimentaire.nombre_vieux
    fill_in "Situation", with: @banquealimentaire.situation_id
    fill_in "Statut", with: @banquealimentaire.statut_id
    click_on "Create Banquealimentaire"

    assert_text "Banquealimentaire was successfully created"
    click_on "Back"
  end

  test "updating a Banquealimentaire" do
    visit banquealimentaires_url
    click_on "Edit", match: :first

    fill_in "Actu", with: @banquealimentaire.actu_id
    fill_in "Chef", with: @banquealimentaire.chef_id
    fill_in "Compte", with: @banquealimentaire.compte_id
    fill_in "Distribue", with: @banquealimentaire.distribue_id
    fill_in "Nombre de personnes", with: @banquealimentaire.nombre_de_personnes
    fill_in "Nombre handicapes", with: @banquealimentaire.nombre_handicapes
    fill_in "Nombre jeune", with: @banquealimentaire.nombre_jeune
    fill_in "Nombre jeune mere", with: @banquealimentaire.nombre_jeune_mere
    fill_in "Nombre nourisson", with: @banquealimentaire.nombre_nourisson
    fill_in "Nombre vieux", with: @banquealimentaire.nombre_vieux
    fill_in "Situation", with: @banquealimentaire.situation_id
    fill_in "Statut", with: @banquealimentaire.statut_id
    click_on "Update Banquealimentaire"

    assert_text "Banquealimentaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Banquealimentaire" do
    visit banquealimentaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banquealimentaire was successfully destroyed"
  end
end
