class ActusController < ApplicationController
  before_action :set_actu, only: [:show, :edit, :update, :destroy]

  # GET /actus
  # GET /actus.json
  def index
    @actus = Actu.all
  end

  # GET /actus/1
  # GET /actus/1.json
  def show
  end

  # GET /actus/new
  def new
    @actu = Actu.new
  end

  # GET /actus/1/edit
  def edit
  end

  # POST /actus
  # POST /actus.json
  def create
    @actu = Actu.new(actu_params)

    respond_to do |format|
      if @actu.save
        format.html { redirect_to @actu, notice: 'Actu was successfully created.' }
        format.json { render :show, status: :created, location: @actu }
      else
        format.html { render :new }
        format.json { render json: @actu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actus/1
  # PATCH/PUT /actus/1.json
  def update
    respond_to do |format|
      if @actu.update(actu_params)
        format.html { redirect_to @actu, notice: 'Actu was successfully updated.' }
        format.json { render :show, status: :ok, location: @actu }
      else
        format.html { render :edit }
        format.json { render json: @actu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actus/1
  # DELETE /actus/1.json
  def destroy
    @actu.destroy
    respond_to do |format|
      format.html { redirect_to actus_url, notice: 'Actu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actu
      @actu = Actu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actu_params
      params.require(:actu).permit(:nom)
    end
end
