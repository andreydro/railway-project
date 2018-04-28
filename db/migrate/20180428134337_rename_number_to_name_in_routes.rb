class RenameNumberToNameInRoutes < ActiveRecord::Migration[5.1]
  def change
    rename_column :routes, :number, :name
  end
end
