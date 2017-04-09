class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :user
    validates :start, presence: true
end