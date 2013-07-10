class Phone < ActiveRecord::Base
  belongs_to :dependency
  attr_accessible :comments, :dependency_id, :name, :numbers
end
