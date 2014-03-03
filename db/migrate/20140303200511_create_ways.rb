class CreateWays < ActiveRecord::Migration
  def change
    create_table :ways do |t|
      t.string :name

      t.timestamps
    end
  end
end
