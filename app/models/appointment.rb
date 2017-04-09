class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :user
    
    validates :start, presence: true
    validates :doctor_id, presence: true
    validates :user_id, presence: true
    validates :doctor_id, uniqueness: { scope: :start }
end