class User < ActiveRecord::Base
  attr_accessible :city, :email, :name, :password_digest, :state, :street1, :street2, :zipcode
end
