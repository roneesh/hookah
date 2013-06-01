class Product < ActiveRecord::Base
  attr_accessible :brand, :description, :flavor, :price

  has_many :slots

  validates_presence_of :price, :brand, :flavor

end
