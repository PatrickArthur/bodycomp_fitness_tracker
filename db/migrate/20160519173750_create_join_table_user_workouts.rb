class CreateJoinTableUserWorkouts < ActiveRecord::Migration
  def change
    create_join_table :workouts, :users do |t|
      t.index [:workout_id, :user_id]
      t.index [:user_id, :workout_id]
    end
  end
end
