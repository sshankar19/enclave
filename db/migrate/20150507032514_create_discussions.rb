class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :author_id
      t.string  :title,  null: false
      t.boolean :active, null: false, default: true
      t.boolean :closed, null: false, default: false
      t.boolean :sticky, null: false, default: false
      t.timestamps       null: false
    end
  end
end
