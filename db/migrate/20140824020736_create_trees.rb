class CreateTrees < ActiveRecord::Migration
  def change
    create_table :trees do |t|
      t.string :url
      t.references :branch
      t.references :author
      t.timestamps
    end
  end
end
