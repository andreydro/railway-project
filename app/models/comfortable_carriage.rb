class ComfortableCarriage < Carriage
  validates :bottom_seats, presence: true, numerically: { only_integer: true }
end