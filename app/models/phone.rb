class Phone < ActiveRecord::Base
  attr_accessible :comments, :dependency_id, :name, :numbers
end
