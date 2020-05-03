class ComptesController < ApplicationController
  before_action :set_compte, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_chef!
  # GET /comptes
  # GET /comptes.json
  def index
    @comptes = Compte.all
  end

  # GET /comptes/1
  # GET /comptes/1.json
  def show
  end

  # GET /comptes/new
  def new
    @compte = current_chef.comptes.build
  end

  # GET /comptes/1/edit
  def edit
  end

  # POST /comptes
  # POST /comptes.json
  def create
    @compte = current_chef.comptes.build(compte_params)

    respond_to do |format|
      if @compte.save
        format.html { redirect_to root_path, notice: 'Compte Crée !' }
        format.json { render :show, status: :created, location: @compte }
      else
        format.html { render :new }
        format.json { render json: @compte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comptes/1
  # PATCH/PUT /comptes/1.json
  def update
    respond_to do |format|
      if @compte.update(compte_params)
        format.html { redirect_to @compte, notice: 'Compte was successfully updated.' }
        format.json { render :show, status: :ok, location: @compte }
      else
        format.html { render :edit }
        format.json { render json: @compte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comptes/1
  # DELETE /comptes/1.json
  def destroy
    @compte.destroy
    respond_to do |format|
      format.html { redirect_to comptes_url, notice: 'Compte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compte
      @compte = Compte.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def compte_params
      params.require(:compte).permit(:nom, :nom_chef, :telephone, :sex_id, :situation_id, :statut_id, :province_id, :nationalite, :commune, :quartier, :date, :lieu, :cnamgs, :cnss, :one, :arrondissement_id, :chef_id, :nombreepouse)
    end
end
