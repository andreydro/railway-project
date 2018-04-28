class AddPassengerAndPassportToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :passenger_name, :string
    add_column :tickets, :passenger_passport, :string
  end
end
