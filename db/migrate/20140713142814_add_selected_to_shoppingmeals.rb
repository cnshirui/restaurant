class AddSelectedToShoppingmeals < ActiveRecord::Migration
  def change
    add_column :shopping_meals, :selected, :bool
  end
end
