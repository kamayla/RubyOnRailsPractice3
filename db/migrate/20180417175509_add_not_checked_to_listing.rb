class AddNotCheckedToListing < ActiveRecord::Migration
  def change
    add_column :listings, :not_checked, :integer, default: 0
  end
end
