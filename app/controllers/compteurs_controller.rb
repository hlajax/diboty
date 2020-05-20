class CompteursController < ApplicationController
  before_action :set_compteur, only: [:show, :edit, :update, :destroy]

  # GET /compteurs
  # GET /compteurs.json
  def index
    @compteurs = Compteur.all
  end

  # GET /compteurs/1
  # GET /compteurs/1.json
  def show
  end

  # GET /compteurs/new
  def new
    @compteur = Compteur.new
  end

  # GET /compteurs/1/edit
  def edit
  end

  # POST /compteurs
  # POST /compteurs.json
  def create
    @compteur = Compteur.new(compteur_params)

    respond_to do |format|
      if @compteur.save
        format.html { redirect_to @compteur, notice: 'Compteur was successfully created.' }
        format.json { render :show, status: :created, location: @compteur }
      else
        format.html { render :new }
        format.json { render json: @compteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compteurs/1
  # PATCH/PUT /compteurs/1.json
  def update
    respond_to do |format|
      if @compteur.update(compteur_params)
        format.html { redirect_to @compteur, notice: 'Compteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @compteur }
      else
        format.html { render :edit }
        format.json { render json: @compteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compteurs/1
  # DELETE /compteurs/1.json
  def destroy
    @compteur.destroy
    respond_to do |format|
      format.html { redirect_to compteurs_url, notice: 'Compteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compteur
      @compteur = Compteur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compteur_params
      params.require(:compteur).permit(:libelle, :description)
    end
end
