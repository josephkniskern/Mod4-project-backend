class Product < ApplicationRecord
  belongs_to :purveyor 
  belongs_to :restaurant 
end
