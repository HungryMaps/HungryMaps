class Ubicacion < ActiveRecord::Base
  has_many :restaurantes
  Restaurante.joins('INNER JOIN ubicacions ON restaurantes_id = ubicacions.restaurantes_id')
  
def self.search(search)
   if(Ubicacion.exists?(['provincia LIKE ?', "%#{search}%"]))  #1
   	where('provincia LIKE ?', "%#{search}%" )
   else
     if(Ubicacion.exists?(['canton LIKE ?', "%#{search}%"]))  #2
   	 where('canton LIKE ?', "%#{search}%" ) 
     else
       if(Ubicacion.exists?(['distrito LIKE ?', "%#{search}%"]))#3
         where('distrito LIKE ?', "%#{search}%" )
       end #3
     end #2
   end #1
end

end
