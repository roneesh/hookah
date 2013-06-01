class User < ActiveRecord::Base
  attr_accessible :city, :email, :name, :password_digest, :state, :street1, :street2, :zipcode, :password, :password_confirmation

  has_secure_password

  has_many :boxes

  validates_presence_of :city, :name, :email, :state, :street1, :zipcode

  validates :email, :uniqueness => true

  def current_user 
    User.find_by_id(session[:user_id])
  end


end
