class User < ActiveRecord::Base
  has_many :body_inputs
  has_many :lift_metrics
  has_many :workouts, through: :user_workouts
end
