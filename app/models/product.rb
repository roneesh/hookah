class Product < ActiveRecord::Base
  attr_accessible :brand, :description, :flavor, :price
end
