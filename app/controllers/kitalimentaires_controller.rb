class KitalimentairesController < ApplicationController
  before_action :set_kitalimentaire, only: [:show, :edit, :update, :destroy]

  # GET /kitalimentaires
  # GET /kitalimentaires.json
  def index
    @kitalimentaires = Kitalimentaire.all
  end

  # GET /kitalimentaires/1
  # GET /kitalimentaires/1.json
  def show
  end

  # GET /kitalimentaires/new
  def new
    @kitalimentaire = Kitalimentaire.new
  end

  # GET /kitalimentaires/1/edit
  def edit
  end

  # POST /kitalimentaires
  # POST /kitalimentaires.json
  def create
    @kitalimentaire = Kitalimentaire.new(kitalimentaire_params)

    respond_to do |format|
      if @kitalimentaire.save
        format.html { redirect_to root_path, notice: 'Demande envoyée !' }
        format.json { render :show, status: :created, location: @kitalimentaire }
      else
        format.html { render :new }
        format.json { render json: @kitalimentaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitalimentaires/1
  # PATCH/PUT /kitalimentaires/1.json
  def update
    respond_to do |format|
      if @kitalimentaire.update(kitalimentaire_params)
        format.html { redirect_to @kitalimentaire, notice: 'Kitalimentaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @kitalimentaire }
      else
        format.html { render :edit }
        format.json { render json: @kitalimentaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitalimentaires/1
  # DELETE /kitalimentaires/1.json
  def destroy
    @kitalimentaire.destroy
    respond_to do |format|
      format.html { redirect_to kitalimentaires_url, notice: 'Kitalimentaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitalimentaire
      @kitalimentaire = Kitalimentaire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kitalimentaire_params
      params.require(:kitalimentaire).permit(:province_id, :ville, :arrondissement, :quartier, :compteur_id, :nom, :numeroc, :beneficiaire, :sex_id, :age, :profession, :nombre, :cnam_id, :contacts, :piece, :photo, :eligible_id, :chef_id)
    end
end
