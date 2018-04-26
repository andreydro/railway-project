class AddIndexStationToStationsRoutes < ActiveRecord::Migration[5.1]
  def change
    add_column :stations_routes, :position, :integer
  end
end
