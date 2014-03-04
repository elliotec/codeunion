class AddLanguageidToWays < ActiveRecord::Migration
  def change
    add_column :ways, :language_id, :integer
  end
end
