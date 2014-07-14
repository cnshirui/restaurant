class FixDateTypeForShoppings < ActiveRecord::Migration
  def change
    remove_column :shoppings, :date
    add_column :shoppings, :date, :date
  end
end
