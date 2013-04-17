class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.string :author
      t.boolean :approved

      t.timestamps
    end
  end
end
