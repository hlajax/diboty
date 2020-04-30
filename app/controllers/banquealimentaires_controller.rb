class BanquealimentairesController < ApplicationController
  before_action :set_banquealimentaire, only: [:show, :edit, :update, :destroy]

  # GET /banquealimentaires
  # GET /banquealimentaires.json
  def index
    @banquealimentaires = Banquealimentaire.all
  end

  # GET /banquealimentaires/1
  # GET /banquealimentaires/1.json
  def show
  end

  # GET /banquealimentaires/new
  def new
    @banquealimentaire = current_chef.banquealimentaires.build
  end

  # GET /banquealimentaires/1/edit
  def edit
  end

  # POST /banquealimentaires
  # POST /banquealimentaires.json
  def create
    @banquealimentaire = current_chef.banquealimentaires.build(banquealimentaire_params)

    respond_to do |format|
      if @banquealimentaire.save
        format.html { redirect_to root_path, notice: 'Demande envoyée !' }
        format.json { render :show, status: :created, location: @banquealimentaire }
      else
        format.html { render :new }
        format.json { render json: @banquealimentaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banquealimentaires/1
  # PATCH/PUT /banquealimentaires/1.json
  def update
    respond_to do |format|
      if @banquealimentaire.update(banquealimentaire_params)
        format.html { redirect_to @banquealimentaire, notice: 'Banquealimentaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @banquealimentaire }
      else
        format.html { render :edit }
        format.json { render json: @banquealimentaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banquealimentaires/1
  # DELETE /banquealimentaires/1.json
  def destroy
    @banquealimentaire.destroy
    respond_to do |format|
      format.html { redirect_to banquealimentaires_url, notice: 'Banquealimentaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banquealimentaire
      @banquealimentaire = Banquealimentaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banquealimentaire_params
      params.require(:banquealimentaire).permit(:statut_id, :situation_id, :actu_id, :nombre_de_personnes, :nombre_handicapes, :nombre_vieux, :nombre_jeune_mere, :nombre_jeune, :nombre_nourisson, :chef_id, :situation_id, :statut_id,:distribue_id, :actu_id, :compte_id)
    end
end
