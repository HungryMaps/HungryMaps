class Orden < ActiveRecord::Base
	belongs_to :restaurante
	belongs_to :user
	belongs_to :estado
end
