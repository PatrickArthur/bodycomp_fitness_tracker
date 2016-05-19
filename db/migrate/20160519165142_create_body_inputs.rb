class CreateBodyInputs < ActiveRecord::Migration
  def change
    create_table :body_inputs do |t|
       t.integer :user_id, null: false, default: 0
       t.string :body_inputs, null: false, default: ""
       t.timestamps null: false
    end
    add_index :body_inputs, :user_id,                unique: true
  end
end
