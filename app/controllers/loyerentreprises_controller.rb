class LoyerentreprisesController < ApplicationController
  before_action :set_loyerentreprise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_chef!
  # GET /loyerentreprises
  # GET /loyerentreprises.json
  def index
    @loyerentreprises = Loyerentreprise.all
  end

  # GET /loyerentreprises/1
  # GET /loyerentreprises/1.json
  def show
  end

  # GET /loyerentreprises/new
  def new
    @loyerentreprise = current_chef.loyerentreprises.build
  end

  # GET /loyerentreprises/1/edit
  def edit
  end

  # POST /loyerentreprises
  # POST /loyerentreprises.json
  def create
    @loyerentreprise = current_chef.loyerentreprises.build(loyerentreprise_params)

    respond_to do |format|
      if @loyerentreprise.save
        format.html { redirect_to root_path, notice: 'Demande envoyée !' }
        format.json { render :show, status: :created, location: @loyerentreprise }
      else
        format.html { render :new }
        format.json { render json: @loyerentreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loyerentreprises/1
  # PATCH/PUT /loyerentreprises/1.json
  def update
    respond_to do |format|
      if @loyerentreprise.update(loyerentreprise_params)
        format.html { redirect_to @loyerentreprise, notice: 'Loyerentreprise was successfully updated.' }
        format.json { render :show, status: :ok, location: @loyerentreprise }
      else
        format.html { render :edit }
        format.json { render json: @loyerentreprise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loyerentreprises/1
  # DELETE /loyerentreprises/1.json
  def destroy
    @loyerentreprise.destroy
    respond_to do |format|
      format.html { redirect_to loyerentreprises_url, notice: 'Loyerentreprise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loyerentreprise
      @loyerentreprise = Loyerentreprise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loyerentreprise_params
      params.require(:loyerentreprise).permit(:nom_proprietaire, :date_de_naissance_proprietaire, :lieu_de_naissance_proprietaire,:piece_id, :numero_piece, :telephones_proprietaire, :email_proprietaire, :situation_id, :lieu_de_residence_proprietaire, :raison_sociale, :secteur, :fiche, :rccm, :nif, :telephones, :email, :cnamgs, :cnss, :type_id, :construction_id, :province_id, :loyer_mensuel, :loyer_trimestriel, :adresse, :quartier, :autre, :chef_id,:distribue_id, :actu_id, :situation, :compte_id, :ville, :nature, :recepisse, :nombre, :perte, :forme_id, :datec, :siege_id, :contact, :mail)
    end
end
