class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :date
      t.string :type

      t.timestamps
    end
  end
end
