class AddCategoryToWays < ActiveRecord::Migration
  def change
    add_column :ways, :category, :string
  end
end
