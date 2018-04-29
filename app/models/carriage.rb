class Carriage < ActiveRecord::Base
  TYPES = { coupe: 'CoupeCarriage',
            economy: 'EconomyCarriage',
            siting: 'SitingCarriage',
            comfortable: 'ComfortableCarriage'}

  validates :number, uniqueness: { scope: :train_id }
  before_validation :set_number

  belongs_to :train

  scope :economy, -> { where(type: 'EconomyCarriage') }
  scope :coupe, -> { where(type: 'CoupeCarriage') }
  scope :ordered, -> { order(:numbergit) }

  TYPES.each_pair do |type_name, type|
    scope type_name, -> {where(type: type)}
  end

  private

  def set_number
    self.number = train.carriages.size + 1
  end

  def self.types
    TYPES.values
  end

  def self.total_seats(type)
    sum(type)
  end
end