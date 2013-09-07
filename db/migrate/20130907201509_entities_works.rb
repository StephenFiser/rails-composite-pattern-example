class EntitiesWorks < ActiveRecord::Migration
  def up
  	create_table :entities_works, id: false do |t|
  		t.integer "entity_id"
  		t.integer "work_id"
  	end
  	add_index :entities_works, ["entity_id", "work_id"]
  end  

  def down
  	drop_table :entities_works
  end
end
