require 'test_helper'

class SignalementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signalement = signalements(:one)
  end

  test "should get index" do
    get signalements_url
    assert_response :success
  end

  test "should get new" do
    get new_signalement_url
    assert_response :success
  end

  test "should create signalement" do
    assert_difference('Signalement.count') do
      post signalements_url, params: { signalement: { contact_whatsapp: @signalement.contact_whatsapp, date: @signalement.date, enfants: @signalement.enfants, nom: @signalement.nom, passeport: @signalement.passeport, pays: @signalement.pays, pieces_jointes: @signalement.pieces_jointes, raison_du_sejour: @signalement.raison_du_sejour, sexe_id: @signalement.sexe_id, ville: @signalement.ville } }
    end

    assert_redirected_to signalement_url(Signalement.last)
  end

  test "should show signalement" do
    get signalement_url(@signalement)
    assert_response :success
  end

  test "should get edit" do
    get edit_signalement_url(@signalement)
    assert_response :success
  end

  test "should update signalement" do
    patch signalement_url(@signalement), params: { signalement: { contact_whatsapp: @signalement.contact_whatsapp, date: @signalement.date, enfants: @signalement.enfants, nom: @signalement.nom, passeport: @signalement.passeport, pays: @signalement.pays, pieces_jointes: @signalement.pieces_jointes, raison_du_sejour: @signalement.raison_du_sejour, sexe_id: @signalement.sexe_id, ville: @signalement.ville } }
    assert_redirected_to signalement_url(@signalement)
  end

  test "should destroy signalement" do
    assert_difference('Signalement.count', -1) do
      delete signalement_url(@signalement)
    end

    assert_redirected_to signalements_url
  end
end
