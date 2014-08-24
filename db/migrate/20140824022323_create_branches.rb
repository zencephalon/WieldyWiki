class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :content
      t.string :title
      t.references :author
      t.references :tree
      t.timestamps
    end
  end
end
