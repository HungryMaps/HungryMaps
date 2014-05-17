class CantonsController < ApplicationController
  before_action :set_canton, only: [:show, :edit, :update, :destroy]

  # GET /cantons
  # GET /cantons.json
  def index
    @cantons = Canton.all
  end

  # GET /cantons/1
  # GET /cantons/1.json
  def show
  end

  # GET /cantons/new
  def new
    @canton = Canton.new
  end

  # GET /cantons/1/edit
  def edit
  end

  # POST /cantons
  # POST /cantons.json
  def create
    @canton = Canton.new(canton_params)

    respond_to do |format|
      if @canton.save
        format.html { redirect_to @canton, notice: 'Canton was successfully created.' }
        format.json { render :show, status: :created, location: @canton }
      else
        format.html { render :new }
        format.json { render json: @canton.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cantons/1
  # PATCH/PUT /cantons/1.json
  def update
    respond_to do |format|
      if @canton.update(canton_params)
        format.html { redirect_to @canton, notice: 'Canton was successfully updated.' }
        format.json { render :show, status: :ok, location: @canton }
      else
        format.html { render :edit }
        format.json { render json: @canton.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cantons/1
  # DELETE /cantons/1.json
  def destroy
    @canton.destroy
    respond_to do |format|
      format.html { redirect_to cantons_url, notice: 'Canton was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canton
      @canton = Canton.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def canton_params
      params.require(:canton).permit(:nombre_canton, :provin_id, :direccion_id)
    end
end
