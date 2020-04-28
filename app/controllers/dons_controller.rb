class DonsController < ApplicationController
  before_action :set_don, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_chef!
  # GET /dons
  # GET /dons.json
  def index
    @dons = Don.all
  end
  def lesdons
  end
  # GET /dons/1
  # GET /dons/1.json
  def show
  end

  # GET /dons/new
  def new
    @don = current_chef.dons.build
  end

  # GET /dons/1/edit
  def edit
  end

  # POST /dons
  # POST /dons.json
  def create
    @don = current_chef.dons.build(don_params)

    respond_to do |format|
      if @don.save
        format.html { redirect_to root_path, notice: 'Merci Pour votre initiative !' }
        format.json { render :show, status: :created, location: @don }
      else
        format.html { render :new }
        format.json { render json: @don.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dons/1
  # PATCH/PUT /dons/1.json
  def update
    respond_to do |format|
      if @don.update(don_params)
        format.html { redirect_to @don, notice: 'Don was successfully updated.' }
        format.json { render :show, status: :ok, location: @don }
      else
        format.html { render :edit }
        format.json { render json: @don.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dons/1
  # DELETE /dons/1.json
  def destroy
    @don.destroy
    respond_to do |format|
      format.html { redirect_to dons_url, notice: 'Don was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_don
      @don = Don.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def don_params
      params.require(:don).permit(:nom, :nom_entreprise, :numero_de_telephone, :email, :adresse, :detail, :date, :chef_id)
    end
end
