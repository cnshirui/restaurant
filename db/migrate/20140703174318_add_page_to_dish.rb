class AddPageToDish < ActiveRecord::Migration
  def change
    add_column :dishes, :page, :text
  end
end
