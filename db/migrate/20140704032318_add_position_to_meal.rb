class AddPositionToMeal < ActiveRecord::Migration
  def change
    add_column :meals, :position, :integer
  end
end
