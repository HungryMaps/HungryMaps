class NutricionsController < ApplicationController
  before_action :set_nutricion, only: [:show, :edit, :update, :destroy]

  # GET /nutricions
  # GET /nutricions.json
  def index
    @nutricions = Nutricion.all
  end

  # GET /nutricions/1
  # GET /nutricions/1.json
  def show
  end

  # GET /nutricions/new
  def new
    @nutricion = Nutricion.new
  end

  # GET /nutricions/1/edit
  def edit
  end

  # POST /nutricions
  # POST /nutricions.json
  def create
    @nutricion = Nutricion.new(nutricion_params)

    respond_to do |format|
      if @nutricion.save
        format.html { redirect_to @nutricion, notice: 'Nutricion was successfully created.' }
        format.json { render :show, status: :created, location: @nutricion }
      else
        format.html { render :new }
        format.json { render json: @nutricion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutricions/1
  # PATCH/PUT /nutricions/1.json
  def update
    respond_to do |format|
      if @nutricion.update(nutricion_params)
        format.html { redirect_to @nutricion, notice: 'Nutricion was successfully updated.' }
        format.json { render :show, status: :ok, location: @nutricion }
      else
        format.html { render :edit }
        format.json { render json: @nutricion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutricions/1
  # DELETE /nutricions/1.json
  def destroy
    @nutricion.destroy
    respond_to do |format|
      format.html { redirect_to nutricions_url, notice: 'Nutricion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutricion
      @nutricion = Nutricion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutricion_params
      params.require(:nutricion).permit(:menu_id, :energia, :grasas, :hidratos, :proteinas, :sal)
    end
end
