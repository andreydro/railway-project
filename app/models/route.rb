class Route < ActiveRecord::Base
  has_many :stations_routes
  has_many :stations, through: :stations_routes
  has_many :trains

  validates :number, presence: true
end