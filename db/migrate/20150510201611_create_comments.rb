class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :discussions
      t.integer :author_id, null: false
      t.string :format, null: false
      t.text :body, null: false
      t.timestamps null: false
    end
  end
end
