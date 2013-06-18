class CreatePrzystaneksRezerwacjas < ActiveRecord::Migration
  def change
    create_table :przystaneks_rezerwacjas do |t|
      t.integer :rezerwacja_id
      t.integer :przystanek_id

    end
  end
end
