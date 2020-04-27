class DonNumerairesController < ApplicationController
  before_action :set_don_numeraire, only: [:show, :edit, :update, :destroy]

  # GET /don_numeraires
  # GET /don_numeraires.json
  def index
    @don_numeraires = DonNumeraire.all
  end

  # GET /don_numeraires/1
  # GET /don_numeraires/1.json
  def show
  end

  # GET /don_numeraires/new
  def new
    @don_numeraire = current_chef.donnumeraires.build
  end

  # GET /don_numeraires/1/edit
  def edit
  end

  # POST /don_numeraires
  # POST /don_numeraires.json
  def create
    @don_numeraire = current_chef.donnumeraires.build(don_numeraire_params)

    respond_to do |format|
      if @don_numeraire.save
        format.html { redirect_to @don_numeraire, notice: 'Merci pour votre Don !' }
        format.json { render :show, status: :created, location: @don_numeraire }
      else
        format.html { render :new }
        format.json { render json: @don_numeraire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /don_numeraires/1
  # PATCH/PUT /don_numeraires/1.json
  def update
    respond_to do |format|
      if @don_numeraire.update(don_numeraire_params)
        format.html { redirect_to @don_numeraire, notice: 'Don numeraire was successfully updated.' }
        format.json { render :show, status: :ok, location: @don_numeraire }
      else
        format.html { render :edit }
        format.json { render json: @don_numeraire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /don_numeraires/1
  # DELETE /don_numeraires/1.json
  def destroy
    @don_numeraire.destroy
    respond_to do |format|
      format.html { redirect_to don_numeraires_url, notice: 'Don numeraire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_don_numeraire
      @don_numeraire = DonNumeraire.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def don_numeraire_params
      params.require(:don_numeraire).permit(:nom, :nom_entreprise, :numero_de_telephone, :email, :adresse, :montant, :nature_id, :chef_id)
    end
end
