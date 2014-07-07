class CreateBurdens < ActiveRecord::Migration
  def change
    create_table :burdens do |t|
      t.references :material, index: true
      t.belongs_to :dish, index: true
      t.decimal :quantity

      t.timestamps
    end
  end
end
