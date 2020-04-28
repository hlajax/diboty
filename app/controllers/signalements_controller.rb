class SignalementsController < ApplicationController
  before_action :set_signalement, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_chef!
  # GET /signalements
  # GET /signalements.json
  def index
    @signalements = Signalement.all
  end

  # GET /signalements/1
  # GET /signalements/1.json
  def show
  end

  # GET /signalements/new
  def new
    @signalement = current_chef.signalements.build
  end

  # GET /signalements/1/edit
  def edit
  end

  # POST /signalements
  # POST /signalements.json
  def create
    @signalement = current_chef.signalements.build(signalement_params)

    respond_to do |format|
      if @signalement.save
        format.html { redirect_to @signalement, notice: 'Merci Pour votre Signalement !' }
        format.json { render :show, status: :created, location: @signalement }
      else
        format.html { render :new }
        format.json { render json: @signalement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signalements/1
  # PATCH/PUT /signalements/1.json
  def update
    respond_to do |format|
      if @signalement.update(signalement_params)
        format.html { redirect_to @signalement, notice: 'Signalement was successfully updated.' }
        format.json { render :show, status: :ok, location: @signalement }
      else
        format.html { render :edit }
        format.json { render json: @signalement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signalements/1
  # DELETE /signalements/1.json
  def destroy
    @signalement.destroy
    respond_to do |format|
      format.html { redirect_to signalements_url, notice: 'Signalement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signalement
      @signalement = Signalement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def signalement_params
      params.require(:signalement).permit(:pays, :ville, :nom, :sex_id, :passeport, :contact_whatsapp, :date, :raison_du_sejour, :enfants, :pieces_jointes, :chef_id)
    end
end
