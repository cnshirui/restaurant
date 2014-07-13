class CreateShoppingMeals < ActiveRecord::Migration
  def change
    create_table :shopping_meals do |t|
      t.belongs_to :shopping
      t.references :meal

      t.timestamps
    end
  end
end
