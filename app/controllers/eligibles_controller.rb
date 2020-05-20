class EligiblesController < ApplicationController
  before_action :set_eligible, only: [:show, :edit, :update, :destroy]

  # GET /eligibles
  # GET /eligibles.json
  def index
    @eligibles = Eligible.all
  end

  # GET /eligibles/1
  # GET /eligibles/1.json
  def show
  end

  # GET /eligibles/new
  def new
    @eligible = Eligible.new
  end

  # GET /eligibles/1/edit
  def edit
  end

  # POST /eligibles
  # POST /eligibles.json
  def create
    @eligible = Eligible.new(eligible_params)

    respond_to do |format|
      if @eligible.save
        format.html { redirect_to @eligible, notice: 'Eligible was successfully created.' }
        format.json { render :show, status: :created, location: @eligible }
      else
        format.html { render :new }
        format.json { render json: @eligible.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eligibles/1
  # PATCH/PUT /eligibles/1.json
  def update
    respond_to do |format|
      if @eligible.update(eligible_params)
        format.html { redirect_to @eligible, notice: 'Eligible was successfully updated.' }
        format.json { render :show, status: :ok, location: @eligible }
      else
        format.html { render :edit }
        format.json { render json: @eligible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eligibles/1
  # DELETE /eligibles/1.json
  def destroy
    @eligible.destroy
    respond_to do |format|
      format.html { redirect_to eligibles_url, notice: 'Eligible was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eligible
      @eligible = Eligible.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def eligible_params
      params.require(:eligible).permit(:libelle, :description)
    end
end
