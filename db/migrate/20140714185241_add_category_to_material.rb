class AddCategoryToMaterial < ActiveRecord::Migration
  def change
    add_column :materials, :category, :string
  end
end
