class User < ActiveRecord::Base
  include Clearance::User
  
  has_many :appointments
  has_many :doctors, :through => :appointments
end
