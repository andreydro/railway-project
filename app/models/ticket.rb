class Ticket < ActiveRecrod::Base
  belongs_to :train
  belongs_to :user
  belongs_to :start_station, class_name: "Station", foreign_key: :start_station_id
  belongs_to :end_station, class_name: "Station", foreign_key: :end_station_id

  def route_name
    "#{start_station.name} -  #{end_station.name}"
  end
end