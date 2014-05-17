class ProvinciaController < ApplicationController
  before_action :set_provincium, only: [:show, :edit, :update, :destroy]

  # GET /provincia
  # GET /provincia.json
  def index
    @provincia = Provincium.all
  end

  # GET /provincia/1
  # GET /provincia/1.json
  def show
  end

  # GET /provincia/new
  def new
    @provincium = Provincium.new
  end

  # GET /provincia/1/edit
  def edit
  end

  # POST /provincia
  # POST /provincia.json
  def create
    @provincium = Provincium.new(provincium_params)

    respond_to do |format|
      if @provincium.save
        format.html { redirect_to @provincium, notice: 'Provincium was successfully created.' }
        format.json { render :show, status: :created, location: @provincium }
      else
        format.html { render :new }
        format.json { render json: @provincium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provincia/1
  # PATCH/PUT /provincia/1.json
  def update
    respond_to do |format|
      if @provincium.update(provincium_params)
        format.html { redirect_to @provincium, notice: 'Provincium was successfully updated.' }
        format.json { render :show, status: :ok, location: @provincium }
      else
        format.html { render :edit }
        format.json { render json: @provincium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provincia/1
  # DELETE /provincia/1.json
  def destroy
    @provincium.destroy
    respond_to do |format|
      format.html { redirect_to provincia_url, notice: 'Provincium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provincium
      @provincium = Provincium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provincium_params
      params.require(:provincium).permit(:nombre_provincia)
    end
end
