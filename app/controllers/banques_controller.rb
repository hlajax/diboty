class BanquesController < ApplicationController
  before_action :set_banque, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_chef!
  # GET /banques
  # GET /banques.json
  def index
    @banques = Banque.all
  end

  # GET /banques/1
  # GET /banques/1.json
  def show
  end

  # GET /banques/new
  def new
    @banque = current_chef.banques.build
  end

  # GET /banques/1/edit
  def edit
  end

  # POST /banques
  # POST /banques.json
  def create
    @banque = current_chef.banques.build(banque_params)

    respond_to do |format|
      if @banque.save
        format.html { redirect_to root_path, notice: 'Demande envoyée !' }
        format.json { render :show, status: :created, location: @banque }
      else
        format.html { render :new }
        format.json { render json: @banque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banques/1
  # PATCH/PUT /banques/1.json
  def update
    respond_to do |format|
      if @banque.update(banque_params)
        format.html { redirect_to @banque, notice: 'Banque was successfully updated.' }
        format.json { render :show, status: :ok, location: @banque }
      else
        format.html { render :edit }
        format.json { render json: @banque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banques/1
  # DELETE /banques/1.json
  def destroy
    @banque.destroy
    respond_to do |format|
      format.html { redirect_to banques_url, notice: 'Banque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banque
      @banque = Banque.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banque_params
      params.require(:banque).permit(:statut_id, :situation_id, :actu_id, :nombre_de_personnes, :nombre_handicapes, :nombre_vieux, :nombre_jeune_mere, :nombre_jeune, :nombre_nourisson, :chef_id, :situation_id, :statut_id,:distribue_id, :actu_id)
    end
end
