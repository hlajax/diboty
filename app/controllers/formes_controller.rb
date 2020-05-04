class FormesController < ApplicationController
  before_action :set_forme, only: [:show, :edit, :update, :destroy]

  # GET /formes
  # GET /formes.json
  def index
    @formes = Forme.all
  end

  # GET /formes/1
  # GET /formes/1.json
  def show
  end

  # GET /formes/new
  def new
    @forme = Forme.new
  end

  # GET /formes/1/edit
  def edit
  end

  # POST /formes
  # POST /formes.json
  def create
    @forme = Forme.new(forme_params)

    respond_to do |format|
      if @forme.save
        format.html { redirect_to @forme, notice: 'Forme was successfully created.' }
        format.json { render :show, status: :created, location: @forme }
      else
        format.html { render :new }
        format.json { render json: @forme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formes/1
  # PATCH/PUT /formes/1.json
  def update
    respond_to do |format|
      if @forme.update(forme_params)
        format.html { redirect_to @forme, notice: 'Forme was successfully updated.' }
        format.json { render :show, status: :ok, location: @forme }
      else
        format.html { render :edit }
        format.json { render json: @forme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formes/1
  # DELETE /formes/1.json
  def destroy
    @forme.destroy
    respond_to do |format|
      format.html { redirect_to formes_url, notice: 'Forme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forme
      @forme = Forme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def forme_params
      params.require(:forme).permit(:nom, :slug)
    end
end
