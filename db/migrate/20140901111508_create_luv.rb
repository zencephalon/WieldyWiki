class CreateLuv < ActiveRecord::Migration
  def change
    create_table :luvs do |t|
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
