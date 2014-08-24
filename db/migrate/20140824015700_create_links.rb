class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :link_to, polymorphic: true
      t.references :link_from, polymorphic: true
      t.integer :follow_count
      t.timestamps
    end
  end
end
