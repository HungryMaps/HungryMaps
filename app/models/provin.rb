class Provin < ActiveRecord::Base
	has_many :cantons
	has_many :distritos, through: :cantons
	belongs_to :direccion
end
