class Provin < ActiveRecord::Base
	has_many :cantons
	has_many :distritos, through: :cantons
	belongs_to :direccion
	validates_presence_of :direccion_id, message: "Indique un id"
  	validates :direccion, presence: true
	validates_presence_of :nombre_provincia, message: "Indique un nombre"
def self.search(search)

 if search 

    where('nombre_provincia LIKE ?', "%#{search}%")    

  end

end

end
