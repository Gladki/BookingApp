class CreateRezerwacjaPrzystanek < ActiveRecord::Migration
  def change
    create_table :rezerwacja_przystanek do |t|
      t.integer :rezerwacja_id
      t.integer :przystanek_id

      t.timestamps
    end
  end
end
