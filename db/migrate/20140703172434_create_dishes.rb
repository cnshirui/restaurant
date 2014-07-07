class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.belongs_to :book, index: true

      t.timestamps
    end
  end
end
