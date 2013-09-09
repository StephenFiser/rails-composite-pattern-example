class Work < ActiveRecord::Base
	include CompositeMethods

	attr_accessor :entity_id
	attr_accessible :entity_id, :title

  	has_and_belongs_to_many :entities

  	def teams 
  		self.entities.where(type: "Team")
  	end

  	def employees
  		self.entities.where(type: "Employee")
  	end
end
