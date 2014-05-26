class TipoComida < ActiveRecord::Base
  has_many :restaurantes
end
