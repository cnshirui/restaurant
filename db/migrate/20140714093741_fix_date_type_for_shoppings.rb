class FixDateTypeForShoppings < ActiveRecord::Migration
  def change
    change_column :shoppings, :date, :date
  end
end
