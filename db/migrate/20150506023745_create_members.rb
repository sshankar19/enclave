class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :handle, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamps null: false
    end
  end
end
