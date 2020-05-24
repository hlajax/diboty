class LeskitsController < ApplicationController
  before_action :set_leskit, only: [:show, :edit, :update, :destroy]

  # GET /leskits
  # GET /leskits.json
  def index
    @leskits = Leskit.all
  end

  # GET /leskits/1
  # GET /leskits/1.json
  def show
  end

  # GET /leskits/new
  def new
    @leskit = Leskit.new
  end

  # GET /leskits/1/edit
  def edit
  end

  # POST /leskits
  # POST /leskits.json
  def create
    @leskit = Leskit.new(leskit_params)

    respond_to do |format|
      if @leskit.save
        format.html { redirect_to @leskit, notice: 'Leskit was successfully created.' }
        format.json { render :show, status: :created, location: @leskit }
      else
        format.html { render :new }
        format.json { render json: @leskit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leskits/1
  # PATCH/PUT /leskits/1.json
  def update
    respond_to do |format|
      if @leskit.update(leskit_params)
        format.html { redirect_to @leskit, notice: 'Leskit was successfully updated.' }
        format.json { render :show, status: :ok, location: @leskit }
      else
        format.html { render :edit }
        format.json { render json: @leskit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leskits/1
  # DELETE /leskits/1.json
  def destroy
    @leskit.destroy
    respond_to do |format|
      format.html { redirect_to leskits_url, notice: 'Leskit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leskit
      @leskit = Leskit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def leskit_params
      params.require(:leskit).permit(:titre, :prix)
    end
end
