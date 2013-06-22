class CreateRezerwacjas < ActiveRecord::Migration
  def change
    create_table :rezerwacjas do |t|
      t.integer :rezerwacja_id
      t.string :nazwa
      t.string :imie
      t.string :nazwisko
      t.string :email
      t.string :nrtelefonu
      t.integer :zaplacona
      t.string :uwagi
      t.date :dataUrodzenia
      t.date :datawycieczki

      t.timestamps
    end
  end
end
