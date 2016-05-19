class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
       t.string :level, null: false, default: ""
       t.string :weekly_workout, null: false, default: ""
       t.timestamps null: false
    end
  end
end
