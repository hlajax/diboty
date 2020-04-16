class PieceLocatairesController < ApplicationController
  before_action :set_piece_locataire, only: [:show, :edit, :update, :destroy]

  # GET /piece_locataires
  # GET /piece_locataires.json
  def index
    @piece_locataires = PieceLocataire.all
  end

  # GET /piece_locataires/1
  # GET /piece_locataires/1.json
  def show
  end

  # GET /piece_locataires/new
  def new
    @piece_locataire = PieceLocataire.new
  end

  # GET /piece_locataires/1/edit
  def edit
  end

  # POST /piece_locataires
  # POST /piece_locataires.json
  def create
    @piece_locataire = PieceLocataire.new(piece_locataire_params)

    respond_to do |format|
      if @piece_locataire.save
        format.html { redirect_to @piece_locataire, notice: 'Piece locataire was successfully created.' }
        format.json { render :show, status: :created, location: @piece_locataire }
      else
        format.html { render :new }
        format.json { render json: @piece_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piece_locataires/1
  # PATCH/PUT /piece_locataires/1.json
  def update
    respond_to do |format|
      if @piece_locataire.update(piece_locataire_params)
        format.html { redirect_to @piece_locataire, notice: 'Piece locataire was successfully updated.' }
        format.json { render :show, status: :ok, location: @piece_locataire }
      else
        format.html { render :edit }
        format.json { render json: @piece_locataire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piece_locataires/1
  # DELETE /piece_locataires/1.json
  def destroy
    @piece_locataire.destroy
    respond_to do |format|
      format.html { redirect_to piece_locataires_url, notice: 'Piece locataire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piece_locataire
      @piece_locataire = PieceLocataire.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piece_locataire_params
      params.require(:piece_locataire).permit(:nom, :description, :slug)
    end
end
