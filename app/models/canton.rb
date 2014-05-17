class Canton < ActiveRecord::Base
	belongs_to :provin
	belongs_to :direccion
end
