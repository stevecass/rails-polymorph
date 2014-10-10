class User < ActiveRecord::Base
  has_many :photos
  has_many :messages
  has_many :comments
end