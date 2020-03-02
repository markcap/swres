class AddingReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :code
      t.string :firstname
      t.string :lastname
      t.datetime :depart
      t.boolean :complete
    end
  end
end
