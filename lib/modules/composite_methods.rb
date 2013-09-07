module CompositeMethods 

  	def << new_member
		rel = Relationship.new
		rel.composite_id = self.id
		rel.member_id = new_member.id
		rel.save
	end

  	def members
  		member_ids = []
		rels = Relationship.where(composite_id: self.id).all 
		rels.each do |relationship|
			member_ids << relationship.member_id
		end
		obj_class = self.class.superclass
		obj_class.find(member_ids)
	end
end