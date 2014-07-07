class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :dish, index: true
      t.belongs_to :meal, index: true

      t.timestamps
    end
  end
end
