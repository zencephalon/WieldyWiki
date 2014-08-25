class AddTreeParents < ActiveRecord::Migration
  def change
    change_table :trees do |t|
      t.references :parent
    end
  end
end
