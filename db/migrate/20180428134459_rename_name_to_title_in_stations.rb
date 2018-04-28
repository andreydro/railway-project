class RenameNameToTitleInStations < ActiveRecord::Migration[5.1]
  def change
    rename_column :stations, :name, :title
  end
end
