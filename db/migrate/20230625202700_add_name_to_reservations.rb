class AddNameToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :name, :string
  end
end
