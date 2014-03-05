class RemoveLanguageAndCategoryColumsFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :language
    remove_column :resources, :category
  end
end
