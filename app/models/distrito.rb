class Distrito < ActiveRecord::Base
  belongs_to :ubicacion
  belongs_to :cantones
end
