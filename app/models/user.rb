class User < ActiveRecord::Base
  has_many :body_inputs
  has_many :lift_metrics
  has_many :workouts, through: :user_workouts
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :avatar, attachment_presence: true
end
