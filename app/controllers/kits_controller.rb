class KitsController < ApplicationController
  before_action :set_kit, only: [:show, :edit, :update, :destroy]

  # GET /kits
  # GET /kits.json
  def index
    @kits = Kit.all
  end

  # GET /kits/1
  # GET /kits/1.json
  def show
  end

  # GET /kits/new
  def new
    @kit = Kit.new
  end

  # GET /kits/1/edit
  def edit
  end

  # POST /kits
  # POST /kits.json
  def create
    @kit = Kit.new(kit_params)

    respond_to do |format|
      if @kit.save
        format.html { redirect_to @kit, notice: 'Demande envoyée !' }
        format.json { render :show, status: :created, location: @kit }
      else
        format.html { render :new }
        format.json { render json: @kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kits/1
  # PATCH/PUT /kits/1.json
  def update
    respond_to do |format|
      if @kit.update(kit_params)
        format.html { redirect_to @kit, notice: 'Kit was successfully updated.' }
        format.json { render :show, status: :ok, location: @kit }
      else
        format.html { render :edit }
        format.json { render json: @kit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kits/1
  # DELETE /kits/1.json
  def destroy
    @kit.destroy
    respond_to do |format|
      format.html { redirect_to kits_url, notice: 'Kit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kit
      @kit = Kit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kit_params
      params.require(:kit).permit(:commune, :arrondissement, :quartier, :nom, :sex_id, :date_de_naissance, :lieu_de_naissance, :statut_id, :loyer, :niveau_etude_mere, :activite_mere, :revenu_mensuel, :habitat_id, :telephones, :email, :activite_professionnelle, :cnamgs, :cnss, :religion, :lieu_de_priere, :nombre_handicap, :nombre_agees, :nombre_mere, :nombre_jeune, :nombre_orphelin, :numero_compteur, :numero_canal, :numero_mobile_money)
    end
end
