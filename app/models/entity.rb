class Entity < ActiveRecord::Base
  attr_accessible :name

  	def members
  		member_ids = []
		relationships = Relationship.where(composite_id: self.id).all 
		relationships.each do |relationship|
			member_ids << relationship.member_id
		end
		@members = Entity.find(member_ids)
	end
end
