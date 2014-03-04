class AddLanguageidandCategoryidToResources < ActiveRecord::Migration
  def change
    add_column :resources, :language_id, :integer
    add_column :resources, :category_id, :integer
  end
end
