class DistribuesController < ApplicationController
  before_action :set_distribue, only: [:show, :edit, :update, :destroy]

  # GET /distribues
  # GET /distribues.json
  def index
    @distribues = Distribue.all
  end

  # GET /distribues/1
  # GET /distribues/1.json
  def show
  end

  # GET /distribues/new
  def new
    @distribue = Distribue.new
  end

  # GET /distribues/1/edit
  def edit
  end

  # POST /distribues
  # POST /distribues.json
  def create
    @distribue = Distribue.new(distribue_params)

    respond_to do |format|
      if @distribue.save
        format.html { redirect_to @distribue, notice: 'Distribue was successfully created.' }
        format.json { render :show, status: :created, location: @distribue }
      else
        format.html { render :new }
        format.json { render json: @distribue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribues/1
  # PATCH/PUT /distribues/1.json
  def update
    respond_to do |format|
      if @distribue.update(distribue_params)
        format.html { redirect_to @distribue, notice: 'Distribue was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribue }
      else
        format.html { render :edit }
        format.json { render json: @distribue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribues/1
  # DELETE /distribues/1.json
  def destroy
    @distribue.destroy
    respond_to do |format|
      format.html { redirect_to distribues_url, notice: 'Distribue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribue
      @distribue = Distribue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def distribue_params
      params.require(:distribue).permit(:titre)
    end
end
