class Box < ActiveRecord::Base
  attr_accessible :frequency, :user_id

  belongs_to :user_id
  has_many :slots
  has_many :products, :through => :slots

  validates_presence_of :frequency

end
