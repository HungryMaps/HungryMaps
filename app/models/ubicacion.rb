class Ubicacion < ActiveRecord::Base
  belongs_to :restaurante
  validates :restaurante, presence: true
  
def self.search(search)

 if search 

    where('provincia LIKE ?', "%#{search}%")


  end

end 

end
