class Train < ActiveRecord::Base
  belongs_to :current_station, class_name: "Station", foreign_key: :current_station_id
  belongs_to :route

  validates :number, presence: true
end