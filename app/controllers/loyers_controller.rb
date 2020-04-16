class LoyersController < ApplicationController
  before_action :set_loyer, only: [:show, :edit, :update, :destroy]

  # GET /loyers
  # GET /loyers.json
  def index
    @loyers = Loyer.all
  end

  # GET /loyers/1
  # GET /loyers/1.json
  def show
  end

  # GET /loyers/new
  def new
    @loyer = Loyer.new
  end

  # GET /loyers/1/edit
  def edit
  end

  # POST /loyers
  # POST /loyers.json
  def create
    @loyer = Loyer.new(loyer_params)

    respond_to do |format|
      if @loyer.save
        format.html { redirect_to @loyer, notice: 'Loyer was successfully created.' }
        format.json { render :show, status: :created, location: @loyer }
      else
        format.html { render :new }
        format.json { render json: @loyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loyers/1
  # PATCH/PUT /loyers/1.json
  def update
    respond_to do |format|
      if @loyer.update(loyer_params)
        format.html { redirect_to @loyer, notice: 'Loyer was successfully updated.' }
        format.json { render :show, status: :ok, location: @loyer }
      else
        format.html { render :edit }
        format.json { render json: @loyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loyers/1
  # DELETE /loyers/1.json
  def destroy
    @loyer.destroy
    respond_to do |format|
      format.html { redirect_to loyers_url, notice: 'Loyer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loyer
      @loyer = Loyer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loyer_params
      params.require(:loyer).permit(:nom_proprietaire, :date_de_naissance_proprietaire, :lieu_de_naissance_proprietaire,:piece_id, :numero_piece, :telephones_proprietaire, :email_proprietaire, :situation_id, :lieu_de_residence_proprietaire, :nom_locataire, :sex_id, :nationalite_locataire, :profession_locataire, :date_de_naissance_locataire, :lieu_de_naissance_locataire,:piece_locataire_id, :numero_piece_locataire, :telephones_locataire, :email_locataire, :employeur_locataire, :secteur_locataire, :cnamgs_locataire, :cnss_locataire, :justification_locataire, :type_id, :construction_id, :province_id, :ville_id, :arrondissement_id, :loyer_mensuel, :loyer_trimestriel, :adresse, :quartier, :autre)
    end
end
