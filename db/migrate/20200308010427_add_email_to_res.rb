class AddEmailToRes < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :email, :string
  end
end
