class Purveyor < ApplicationRecord
  has_many :products 
  has_many :restuarants, through: :products
end
