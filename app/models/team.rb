class Team < Entity

	def << new_member
		rel = Relationship.new
		rel.composite_id = self.id
		rel.member_id = new_member.id
		rel.save
	end
end
