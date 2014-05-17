class Provincium < ActiveRecord::Base
  belongs_to :ubicacion
  has_many :cantons
  has_many :distritos, through: :cantons
end
