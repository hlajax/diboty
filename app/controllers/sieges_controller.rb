class SiegesController < ApplicationController
  before_action :set_siege, only: [:show, :edit, :update, :destroy]

  # GET /sieges
  # GET /sieges.json
  def index
    @sieges = Siege.all
  end

  # GET /sieges/1
  # GET /sieges/1.json
  def show
  end

  # GET /sieges/new
  def new
    @siege = Siege.new
  end

  # GET /sieges/1/edit
  def edit
  end

  # POST /sieges
  # POST /sieges.json
  def create
    @siege = Siege.new(siege_params)

    respond_to do |format|
      if @siege.save
        format.html { redirect_to @siege, notice: 'Siege was successfully created.' }
        format.json { render :show, status: :created, location: @siege }
      else
        format.html { render :new }
        format.json { render json: @siege.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sieges/1
  # PATCH/PUT /sieges/1.json
  def update
    respond_to do |format|
      if @siege.update(siege_params)
        format.html { redirect_to @siege, notice: 'Siege was successfully updated.' }
        format.json { render :show, status: :ok, location: @siege }
      else
        format.html { render :edit }
        format.json { render json: @siege.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sieges/1
  # DELETE /sieges/1.json
  def destroy
    @siege.destroy
    respond_to do |format|
      format.html { redirect_to sieges_url, notice: 'Siege was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siege
      @siege = Siege.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def siege_params
      params.require(:siege).permit(:nom, :slug)
    end
end
