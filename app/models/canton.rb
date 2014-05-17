class Canton < ActiveRecord::Base
  belongs_to :provincia
  belongs_to :ubicacion
  has_many :distritos
end
