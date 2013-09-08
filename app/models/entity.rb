class Entity < ActiveRecord::Base
	include CompositeMethods

  	attr_accessible :name
  	has_and_belongs_to_many :works

  	def projects 
  		self.works.where(type: "Project")
  	end

  	def tasks 
  		self.works.where(type: "Task")
  	end

  	def steps 
  		self.works.where(type: "Step")
  	end

end
