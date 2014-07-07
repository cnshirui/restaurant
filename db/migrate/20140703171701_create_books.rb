class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.text :url

      t.timestamps
    end
  end
end
