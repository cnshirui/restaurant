class FixDateTypeForMeal < ActiveRecord::Migration
  def change
    change_column :meals, :date, :string
  end
end
