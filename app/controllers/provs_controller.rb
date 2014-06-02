class ProvsController < ApplicationController
  before_action :set_prov, only: [:show, :edit, :update, :destroy]

  # GET /provs
  # GET /provs.json
  def index
    @provs = Prov.all
  end

  # GET /provs/1
  # GET /provs/1.json
  def show
  end

  # GET /provs/new
  def new
    @prov = Prov.new
  end

  # GET /provs/1/edit
  def edit
  end

  # POST /provs
  # POST /provs.json
  def create
    @prov = Prov.new(prov_params)

    respond_to do |format|
      if @prov.save
        format.html { redirect_to @prov, notice: 'Prov was successfully created.' }
        format.json { render :show, status: :created, location: @prov }
      else
        format.html { render :new }
        format.json { render json: @prov.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provs/1
  # PATCH/PUT /provs/1.json
  def update
    respond_to do |format|
      if @prov.update(prov_params)
        format.html { redirect_to @prov, notice: 'Prov was successfully updated.' }
        format.json { render :show, status: :ok, location: @prov }
      else
        format.html { render :edit }
        format.json { render json: @prov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provs/1
  # DELETE /provs/1.json
  def destroy
    @prov.destroy
    respond_to do |format|
      format.html { redirect_to provs_url, notice: 'Prov was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prov
      @prov = Prov.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prov_params
      params.require(:prov).permit(:nombre_provincia)
    end
end
