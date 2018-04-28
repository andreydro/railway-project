class AddCarriagesQueueBooleanTypeForTrains < ActiveRecord::Migration[5.1]
  def change
    add_column :trains, :queue, :boolean, default: true
  end
end
