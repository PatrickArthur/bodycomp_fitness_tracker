class CreateLiftMetrics < ActiveRecord::Migration
  def change
    create_table :lift_metrics do |t|
       t.integer :user_id, null: false, default: 0
       t.string :lift_inputs, null: false, default: ""
       t.timestamps null: false
    end
    add_index :lift_metrics, :user_id,                unique: true
  end
end
