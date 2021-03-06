class Createusers < ActiveRecord::Migration
  create_table(:users) do |t|

    t.string :first_name,              null: false, default: ""
    t.string :last_name,              null: false, default: ""
    t.string :email,              null: false, default: ""
    t.string :role,              null: false, default: ""
    t.timestamps null: false
  end

  add_index :users, :email,                unique: true
end
