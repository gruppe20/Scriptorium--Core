class User < ActiveRecord::Base      
  attr_accessible :username, :realname
  has_and_belongs_to_many :groups
end
