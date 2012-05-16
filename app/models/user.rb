class User < ActiveRecord::Base      
  #attr_accessible :username, :realname, :email
  has_and_belongs_to_many :groups, :uniq => true
end
