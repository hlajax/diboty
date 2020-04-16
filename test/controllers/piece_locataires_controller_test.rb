require 'test_helper'

class PieceLocatairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piece_locataire = piece_locataires(:one)
  end

  test "should get index" do
    get piece_locataires_url
    assert_response :success
  end

  test "should get new" do
    get new_piece_locataire_url
    assert_response :success
  end

  test "should create piece_locataire" do
    assert_difference('PieceLocataire.count') do
      post piece_locataires_url, params: { piece_locataire: { description: @piece_locataire.description, nom: @piece_locataire.nom, slug: @piece_locataire.slug } }
    end

    assert_redirected_to piece_locataire_url(PieceLocataire.last)
  end

  test "should show piece_locataire" do
    get piece_locataire_url(@piece_locataire)
    assert_response :success
  end

  test "should get edit" do
    get edit_piece_locataire_url(@piece_locataire)
    assert_response :success
  end

  test "should update piece_locataire" do
    patch piece_locataire_url(@piece_locataire), params: { piece_locataire: { description: @piece_locataire.description, nom: @piece_locataire.nom, slug: @piece_locataire.slug } }
    assert_redirected_to piece_locataire_url(@piece_locataire)
  end

  test "should destroy piece_locataire" do
    assert_difference('PieceLocataire.count', -1) do
      delete piece_locataire_url(@piece_locataire)
    end

    assert_redirected_to piece_locataires_url
  end
end
