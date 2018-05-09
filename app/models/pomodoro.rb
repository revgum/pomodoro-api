class Pomodoro < ApplicationRecord
  has_many :pauses, inverse_of: :pomodoro
end
