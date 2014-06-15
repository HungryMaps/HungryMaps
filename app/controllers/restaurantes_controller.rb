class RestaurantesController < ApplicationController
  before_action :set_restaurante, only: [:show, :edit, :update, :destroy, :restmenu, :carrito, :platillo, :platillo_edit]
  before_action :authenticate_user!, only: [:orden, :edit, :update, :destroy, :new]

  # GET /restaurantes
  # GET /restaurantes.json
 def index
    if(@restaurantes = Restaurante.search(params[:searchbox]) == nil)
       @restaurantes = Restaurante.all
    else
       @restaurantes = Restaurante.search(params[:searchbox])
         respond_to do |format|
         format.html # index.html.erb
       end
    end
  end

  def platillo_edit
     @producto = Producto.find(params[:foo_param])
     render 'platillo'
  end

  def platillo
     @producto = Producto.new
  end

  def restmenu
  end

  def carrito
    if(params[:Producto] != nil)
    	producto = Producto.find(params[:Producto])
    else
	producto = Producto.new(nombre_producto: "", precio: 0)
    end 
    $products += producto.nombre_producto+" "
    $precio += producto.precio
  end

  def agregar
	#falta crear nueva orden con los datos
	$products = ""
	$precio = 0.0
	redirect_to(restaurantes_path)
  end

  # GET /restaurantes/1
  # GET /restaurantes/1.json
  def show
  end

  # GET /restaurantes/new
  def new
    @restaurante = Restaurante.new(user_id: current_user.id)
    if current_user.tipo == "0"
    	redirect_to ('/restaurantes')
    end
  end

  # GET /restaurantes/1/edit
  def edit
  end

  # POST /restaurantes
  # POST /restaurantes.json
  def create
    @restaurante = Restaurante.new(restaurante_params)

    respond_to do |format|
      if @restaurante.save
        format.html { redirect_to @restaurante, notice: 'Restaurante was successfully created.' }
        format.json { render :show, status: :created, location: @restaurante }
      else
        format.html { render :new }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurantes/1
  # PATCH/PUT /restaurantes/1.json
  def update
    respond_to do |format|
      if @restaurante.update(restaurante_params)
        format.html { redirect_to @restaurante, notice: 'Restaurante was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurante }
      else
        format.html { render :edit }
        format.json { render json: @restaurante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantes/1
  # DELETE /restaurantes/1.json
  def destroy
    @restaurante.destroy
    respond_to do |format|
      format.html { redirect_to restaurantes_url, notice: 'Restaurante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurante
      @restaurante = Restaurante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurante_params
      params.require(:restaurante).permit(:nombre_restaurante, :telefono, :correo_electronico, :fax, :ubicacion_id, :user_id, :tipo_comida_id, :señas)
    end

end
