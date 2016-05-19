class CreateExercise < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
       t.string :level, null: false, default: ""
       t.string :exercise, null: false, default: ""
       t.string :body_part, null: false, default: ""
    end
  end
end
