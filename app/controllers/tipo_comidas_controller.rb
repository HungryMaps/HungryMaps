class TipoComidasController < ApplicationController
  before_action :set_tipo_comida, only: [:show, :edit, :update, :destroy]

  # GET /tipo_comidas
  # GET /tipo_comidas.json
  def index
    if(@tipo_comidas = TipoComida.search(params[:searchbox]) == nil)
       @tipo_comidas = TipoComida.all
    else
       @tipo_comidas = TipoComida.search(params[:searchbox])
         respond_to do |format|
         format.html # index.html.erb
       end
    end
  end

  # GET /tipo_comidas/1
  # GET /tipo_comidas/1.json
  def show
  end

  # GET /tipo_comidas/new
  def new
    @tipo_comida = TipoComida.new
  end

  # GET /tipo_comidas/1/edit
  def edit
  end

  # POST /tipo_comidas
  # POST /tipo_comidas.json
  def create
    @tipo_comida = TipoComida.new(tipo_comida_params)

    respond_to do |format|
      if @tipo_comida.save
        format.html { redirect_to @tipo_comida, notice: 'Tipo comida was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_comida }
      else
        format.html { render :new }
        format.json { render json: @tipo_comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_comidas/1
  # PATCH/PUT /tipo_comidas/1.json
  def update
    respond_to do |format|
      if @tipo_comida.update(tipo_comida_params)
        format.html { redirect_to @tipo_comida, notice: 'Tipo comida was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_comida }
      else
        format.html { render :edit }
        format.json { render json: @tipo_comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_comidas/1
  # DELETE /tipo_comidas/1.json
  def destroy
    @tipo_comida.destroy
    respond_to do |format|
      format.html { redirect_to tipo_comidas_url, notice: 'Tipo comida was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_comida
      @tipo_comida = TipoComida.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_comida_params
      params.require(:tipo_comida).permit(:tipo_comida)
    end
end
