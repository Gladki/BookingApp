class CreateRezerwacjaWycieczka < ActiveRecord::Migration
  def change
    create_table :rezerwacja_wycieczka do |t|
      t.integer :rezerwacja_id
      t.integer :wycieczka_id

      t.timestamps
    end
  end
end
