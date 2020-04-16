require "application_system_test_case"

class KitsTest < ApplicationSystemTestCase
  setup do
    @kit = kits(:one)
  end

  test "visiting the index" do
    visit kits_url
    assert_selector "h1", text: "Kits"
  end

  test "creating a Kit" do
    visit kits_url
    click_on "New Kit"

    fill_in "Activite mere", with: @kit.activite_mere
    fill_in "Activite professionnelle", with: @kit.activite_professionnelle
    fill_in "Arrondissement", with: @kit.arrondissement_id
    fill_in "Cnamgs", with: @kit.cnamgs
    fill_in "Cnss", with: @kit.cnss
    fill_in "Commune", with: @kit.commune_id
    fill_in "Date de naissance", with: @kit.date_de_naissance
    fill_in "Email", with: @kit.email
    fill_in "Habitat", with: @kit.habitat_id
    fill_in "Lieu de naissance", with: @kit.lieu_de_naissance
    fill_in "Lieu de priere", with: @kit.lieu_de_priere
    fill_in "Niveau etude mere", with: @kit.niveau_etude_mere
    fill_in "Nom", with: @kit.nom
    fill_in "Nombre agees", with: @kit.nombre_agees
    fill_in "Nombre handicap", with: @kit.nombre_handicap
    fill_in "Nombre jeune", with: @kit.nombre_jeune
    fill_in "Nombre mere", with: @kit.nombre_mere
    fill_in "Nombre orphelin", with: @kit.nombre_orphelin
    fill_in "Numero canal", with: @kit.numero_canal
    fill_in "Numero compteur", with: @kit.numero_compteur
    fill_in "Numero mobile money", with: @kit.numero_mobile_money
    fill_in "Quartier", with: @kit.quartier
    fill_in "Religion", with: @kit.religion
    fill_in "Revenu mensuel", with: @kit.revenu_mensuel
    fill_in "Sex", with: @kit.sex_id
    fill_in "Statut", with: @kit.statut_id
    fill_in "Telephones", with: @kit.telephones
    click_on "Create Kit"

    assert_text "Kit was successfully created"
    click_on "Back"
  end

  test "updating a Kit" do
    visit kits_url
    click_on "Edit", match: :first

    fill_in "Activite mere", with: @kit.activite_mere
    fill_in "Activite professionnelle", with: @kit.activite_professionnelle
    fill_in "Arrondissement", with: @kit.arrondissement_id
    fill_in "Cnamgs", with: @kit.cnamgs
    fill_in "Cnss", with: @kit.cnss
    fill_in "Commune", with: @kit.commune_id
    fill_in "Date de naissance", with: @kit.date_de_naissance
    fill_in "Email", with: @kit.email
    fill_in "Habitat", with: @kit.habitat_id
    fill_in "Lieu de naissance", with: @kit.lieu_de_naissance
    fill_in "Lieu de priere", with: @kit.lieu_de_priere
    fill_in "Niveau etude mere", with: @kit.niveau_etude_mere
    fill_in "Nom", with: @kit.nom
    fill_in "Nombre agees", with: @kit.nombre_agees
    fill_in "Nombre handicap", with: @kit.nombre_handicap
    fill_in "Nombre jeune", with: @kit.nombre_jeune
    fill_in "Nombre mere", with: @kit.nombre_mere
    fill_in "Nombre orphelin", with: @kit.nombre_orphelin
    fill_in "Numero canal", with: @kit.numero_canal
    fill_in "Numero compteur", with: @kit.numero_compteur
    fill_in "Numero mobile money", with: @kit.numero_mobile_money
    fill_in "Quartier", with: @kit.quartier
    fill_in "Religion", with: @kit.religion
    fill_in "Revenu mensuel", with: @kit.revenu_mensuel
    fill_in "Sex", with: @kit.sex_id
    fill_in "Statut", with: @kit.statut_id
    fill_in "Telephones", with: @kit.telephones
    click_on "Update Kit"

    assert_text "Kit was successfully updated"
    click_on "Back"
  end

  test "destroying a Kit" do
    visit kits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Kit was successfully destroyed"
  end
end
