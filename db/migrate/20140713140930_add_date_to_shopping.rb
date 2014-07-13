class AddDateToShopping < ActiveRecord::Migration
  def change
    add_column :shoppings, :date, :text
  end
end
