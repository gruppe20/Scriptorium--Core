class Group < ActiveRecord::Base
  serialize :members
  has_and_belongs_to_many :users
end
