class RestaurantesController < ApplicationController
  before_action :set_restaurante, only: [:show, :edit, :update, :destroy, :restmenu, :carrito, :platillo, :platillo_edit, :agregar, :solicitud, :comentario]
  before_action :authenticate_user!, only: [:carrito, :edit, :update, :destroy, :new]
  before_action

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

  def comentario
    if(params[:comentario] != nil)
	 @restaurante.opinions.create(user_id: current_user.id, comentario: params[:comentario])
    end
  end

  def solicitud
    @ordens = Orden.all 
  end

  def platillo_edit
     @producto = Producto.find(params[:foo_param])
     render 'platillo'
  end

  def upvote
    @restaurante = Restaurante.find(params[:id])
    @restaurante.votes.create(user_id: current_user.id)
    redirect_to(restaurantes_path)
  end

  def dislike
    @restaurante = Restaurante.find(params[:id])
    @restaurante.votes.each do |v|
  	  if v.user_id == current_user.id
	        v.destroy  	
	  end
    end
    redirect_to(restaurantes_path)
  end

  def platillo
     @producto = Producto.new
  end

  def restmenu
  end

  def carrito
    @orden = nil
    for n in Orden.all 
	if((n.user_id == current_user.id) and (n.restaurante_id == @restaurante.id) and (n.estado_id == 1))
		@orden = Orden.find(n.id)
	end
    end
 
    if(@orden == nil)
	@orden = Orden.new(user_id: current_user.id, restaurante_id: @restaurante.id, productos: $products, precio: $precio, estado_id: 1, fecha: Time.zone.now, descripcion: "")
	@orden.save
    end

    if(params[:Producto] != nil)
    	producto = Producto.find(params[:Producto])
    else	
	producto = Producto.new(nombre_producto: "", precio: 0)
    end 

    if(params[:Descripcion] != nil)
	 desc = params[:Descripcion]
    else
	 desc = ""	
    end
    
    @orden.descripcion += desc+" "
    @orden.productos += producto.nombre_producto+" "
    @orden.precio += producto.precio
    @orden.save

  end

  def agregar
	for n in Orden.all 
		if((n.user_id == current_user.id) and (n.restaurante_id == @restaurante.id) and (n.estado_id == 1))
			@orden = Orden.find(n.id)
		end
        end
	if(params[:cancelar]=="1")
		@orden.destroy
		redirect_to(restaurantes_path)
	else
		@orden.estado_id = 2
		@orden.save 
         	ModelMailer.new_record_notification(@orden, current_user).deliver
		ModelMailer.email_to_admin(@orden, @restaurante.user).deliver
		 values = {
		   :business => 'jmarchena93-facilitator@gmail.com',
		   :cmd => '_cart',
		   :upload => 1,
		   :return => 'http://localhost:3000/restaurantes',
		   :involve => @restaurante.id
		  }

		    values.merge!({
		      "amount_1" => @orden.precio,
		      "item_name_1" => @orden.productos,
		      "item_number_1" => @orden.id
		    })
   
 		 redirect_to URI.encode("https://www.sandbox.paypal.com/cr/cgi-bin/webscr?"+ values.map {|k,v| "#{k}=#{v}"}.join("&")) 

	end	
  end

  # GET /restaurantes/1
  # GET /restaurantes/1.json
  def show
  end

  # GET /restaurantes/new
  def new
    @restaurante = Restaurante.new(user_id: current_user.id)
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
