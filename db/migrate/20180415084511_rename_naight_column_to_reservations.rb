class RenameNaightColumnToReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :price_pernaight, :price_pernight
  end
end
