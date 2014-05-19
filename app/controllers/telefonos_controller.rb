class TelefonosController < ApplicationController
  before_action :set_telefono, only: [:show, :edit, :update, :destroy]

  # GET /telefonos
  # GET /telefonos.json
  def index
    @telefonos = Telefono.all
  end

  # GET /telefonos/1
  # GET /telefonos/1.json
  def show
  end

  # GET /telefonos/new
  def new
    @telefono = Telefono.new
  end

  # GET /telefonos/1/edit
  def edit
  end

  # POST /telefonos
  # POST /telefonos.json
  def create
    @telefono = Telefono.new(telefono_params)

    respond_to do |format|
      if @telefono.save
        format.html { redirect_to @telefono, notice: 'Telefono was successfully created.' }
        format.json { render :show, status: :created, location: @telefono }
      else
        format.html { render :new }
        format.json { render json: @telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefonos/1
  # PATCH/PUT /telefonos/1.json
  def update
    respond_to do |format|
      if @telefono.update(telefono_params)
        format.html { redirect_to @telefono, notice: 'Telefono was successfully updated.' }
        format.json { render :show, status: :ok, location: @telefono }
      else
        format.html { render :edit }
        format.json { render json: @telefono.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefonos/1
  # DELETE /telefonos/1.json
  def destroy
    @telefono.destroy
    respond_to do |format|
      format.html { redirect_to telefonos_url, notice: 'Telefono was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefono
      @telefono = Telefono.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def telefono_params
      params.require(:telefono).permit(:restaurante_id, :telefono)
    end
end
