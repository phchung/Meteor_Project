class Reading < ActiveRecord::Base
  validates :balloon_id, :reading_time, :altitude, :temperature, :pressure, :humidity, presence: true
  belongs_to :balloon
end
