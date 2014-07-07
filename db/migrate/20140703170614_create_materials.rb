class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.decimal :balance

      t.timestamps
    end
  end
end
