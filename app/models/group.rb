class Group < ActiveRecord::Base
  serialize :members
end
