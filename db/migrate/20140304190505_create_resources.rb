class CreateResources < ActiveRecord::Migration
  def change
    
    create_table :resources do |t|
      t.string :name
      t.text :body
      t.string :language
      t.string :category

      t.timestamps
    end
  end
end
