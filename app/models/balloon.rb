class Balloon < ActiveRecord::Base

  validates :flight_number, :location, :technician, :recovered, presence: true
  has_many :readings
end
