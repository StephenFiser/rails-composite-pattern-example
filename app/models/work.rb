class Work < ActiveRecord::Base
	include CompositeMethods

  	attr_accessible :title
  	has_and_belongs_to_many :entities
end
