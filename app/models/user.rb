class User < ActiveRecord::Base
  validates :email, :presence => true, 
                      :length => {:minimum => 3, :maximum => 254},
                      :uniqueness => true,
                      :format => {:with => %r{\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z}i }
end

