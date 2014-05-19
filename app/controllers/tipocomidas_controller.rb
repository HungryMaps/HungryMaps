class TipocomidasController < ApplicationController
  before_action :set_tipocomida, only: [:show, :edit, :update, :destroy]

  # GET /tipocomidas
  # GET /tipocomidas.json
  def index
    @tipocomidas = Tipocomida.all
  end

  # GET /tipocomidas/1
  # GET /tipocomidas/1.json
  def show
  end

  # GET /tipocomidas/new
  def new
    @tipocomida = Tipocomida.new
  end

  # GET /tipocomidas/1/edit
  def edit
  end

  # POST /tipocomidas
  # POST /tipocomidas.json
  def create
    @tipocomida = Tipocomida.new(tipocomida_params)

    respond_to do |format|
      if @tipocomida.save
        format.html { redirect_to @tipocomida, notice: 'Tipocomida was successfully created.' }
        format.json { render :show, status: :created, location: @tipocomida }
      else
        format.html { render :new }
        format.json { render json: @tipocomida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipocomidas/1
  # PATCH/PUT /tipocomidas/1.json
  def update
    respond_to do |format|
      if @tipocomida.update(tipocomida_params)
        format.html { redirect_to @tipocomida, notice: 'Tipocomida was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipocomida }
      else
        format.html { render :edit }
        format.json { render json: @tipocomida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipocomidas/1
  # DELETE /tipocomidas/1.json
  def destroy
    @tipocomida.destroy
    respond_to do |format|
      format.html { redirect_to tipocomidas_url, notice: 'Tipocomida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipocomida
      @tipocomida = Tipocomida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipocomida_params
      params.require(:tipocomida).permit(:restaurante_id, :tipocomida)
    end
end
