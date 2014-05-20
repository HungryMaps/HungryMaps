class CategorsController < ApplicationController
  before_action :set_categor, only: [:show, :edit, :update, :destroy]

  # GET /categors
  # GET /categors.json
  def index
    @categors = Categor.all
  end

  # GET /categors/1
  # GET /categors/1.json
  def show
  end

  # GET /categors/new
  def new
    @categor = Categor.new
  end

  # GET /categors/1/edit
  def edit
  end

  # POST /categors
  # POST /categors.json
  def create
    @categor = Categor.new(categor_params)

    respond_to do |format|
      if @categor.save
        format.html { redirect_to @categor, notice: 'Categor was successfully created.' }
        format.json { render :show, status: :created, location: @categor }
      else
        format.html { render :new }
        format.json { render json: @categor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categors/1
  # PATCH/PUT /categors/1.json
  def update
    respond_to do |format|
      if @categor.update(categor_params)
        format.html { redirect_to @categor, notice: 'Categor was successfully updated.' }
        format.json { render :show, status: :ok, location: @categor }
      else
        format.html { render :edit }
        format.json { render json: @categor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categors/1
  # DELETE /categors/1.json
  def destroy
    @categor.destroy
    respond_to do |format|
      format.html { redirect_to categors_url, notice: 'Categor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categor
      @categor = Categor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categor_params
      params.require(:categor).permit(:nombre_categoria)
    end
end
