class Vote < ActiveRecord::Base
belongs_to :restaurante
belongs_to :user
end
