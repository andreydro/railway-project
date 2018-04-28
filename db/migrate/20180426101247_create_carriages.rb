class CreateCarriages < ActiveRecord::Migration[5.1]
  def change
    create_table :carriages do |t|
      t.string :type
      t.string :type_of_carriage
      t.integer :bottom_seats, default: 0
      t.integer :top_seats, default: 0
      t.integer :side_top_seats, default: 0
      t.integer :side_bottom_seats, default: 0
      t.integer :sitting_seats, default: 0
      t.integer :number
      t.belongs_to :train

      t.timestamps
    end
  end
end
