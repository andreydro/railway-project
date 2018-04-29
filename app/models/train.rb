class Train < ActiveRecord::Base
  before_create :set_number

  belongs_to :current_station, class_name: "Station", foreign_key: :current_station_id
  belongs_to :route
  has_many :tickets
  has_many :carriages

  validates :number, presence: true

  private

  def set_number
    self.number = Train.all.count + 1
  end

  def count_seats(type, seats)
    carriages.where(type: type).sum(seats)
  end

  def count_carriages(type)
    carriages.where(type: type).count
  end
end