require 'test_helper'

class BanquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @banque = banques(:one)
  end

  test "should get index" do
    get banques_url
    assert_response :success
  end

  test "should get new" do
    get new_banque_url
    assert_response :success
  end

  test "should create banque" do
    assert_difference('Banque.count') do
      post banques_url, params: { banque: { actu_id: @banque.actu_id, nombre_de_personnes: @banque.nombre_de_personnes, nombre_handicapes: @banque.nombre_handicapes, nombre_jeune: @banque.nombre_jeune, nombre_jeune_mere: @banque.nombre_jeune_mere, nombre_nourisson: @banque.nombre_nourisson, nombre_vieux: @banque.nombre_vieux, situation_id: @banque.situation_id, statut_id: @banque.statut_id } }
    end

    assert_redirected_to banque_url(Banque.last)
  end

  test "should show banque" do
    get banque_url(@banque)
    assert_response :success
  end

  test "should get edit" do
    get edit_banque_url(@banque)
    assert_response :success
  end

  test "should update banque" do
    patch banque_url(@banque), params: { banque: { actu_id: @banque.actu_id, nombre_de_personnes: @banque.nombre_de_personnes, nombre_handicapes: @banque.nombre_handicapes, nombre_jeune: @banque.nombre_jeune, nombre_jeune_mere: @banque.nombre_jeune_mere, nombre_nourisson: @banque.nombre_nourisson, nombre_vieux: @banque.nombre_vieux, situation_id: @banque.situation_id, statut_id: @banque.statut_id } }
    assert_redirected_to banque_url(@banque)
  end

  test "should destroy banque" do
    assert_difference('Banque.count', -1) do
      delete banque_url(@banque)
    end

    assert_redirected_to banques_url
  end
end
