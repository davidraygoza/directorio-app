class Depedency < ActiveRecord::Base
  has_many :phone
  attr_accessible :name
end
