class CnamsController < ApplicationController
  before_action :set_cnam, only: [:show, :edit, :update, :destroy]

  # GET /cnams
  # GET /cnams.json
  def index
    @cnams = Cnam.all
  end

  # GET /cnams/1
  # GET /cnams/1.json
  def show
  end

  # GET /cnams/new
  def new
    @cnam = Cnam.new
  end

  # GET /cnams/1/edit
  def edit
  end

  # POST /cnams
  # POST /cnams.json
  def create
    @cnam = Cnam.new(cnam_params)

    respond_to do |format|
      if @cnam.save
        format.html { redirect_to @cnam, notice: 'Cnam was successfully created.' }
        format.json { render :show, status: :created, location: @cnam }
      else
        format.html { render :new }
        format.json { render json: @cnam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnams/1
  # PATCH/PUT /cnams/1.json
  def update
    respond_to do |format|
      if @cnam.update(cnam_params)
        format.html { redirect_to @cnam, notice: 'Cnam was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnam }
      else
        format.html { render :edit }
        format.json { render json: @cnam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnams/1
  # DELETE /cnams/1.json
  def destroy
    @cnam.destroy
    respond_to do |format|
      format.html { redirect_to cnams_url, notice: 'Cnam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnam
      @cnam = Cnam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cnam_params
      params.require(:cnam).permit(:libelle, :description)
    end
end
