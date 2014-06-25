class Opinion < ActiveRecord::Base
belongs_to :restaurante
belongs_to :user
end
