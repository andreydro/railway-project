class Route < ActiveRecord::Base
  validates :number, presence: true
  has_many :stations_routes
  has_many :stations, through: :stations_routes
end