class Slot < ActiveRecord::Base
  attr_accessible :box_id, :product_id

  belongs_to :box
  belongs_to :product

  validates_presence_of :box_id, :product_id

end
