class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :composite_id
      t.string :member_id

      t.timestamps
    end
  end
end
