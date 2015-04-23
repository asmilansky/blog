class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :author
      t.text :title
 
      t.timestamps null: false
    end
  end
end