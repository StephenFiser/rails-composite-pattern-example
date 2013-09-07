class Entity < ActiveRecord::Base
	include CompositeMethods

  	attr_accessible :name
  	has_and_belongs_to_many :works

end
