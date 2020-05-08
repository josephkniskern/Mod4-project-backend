class Restaurant < ApplicationRecord
  has_many :products 
  has_many :purveyors, through: :products
end
