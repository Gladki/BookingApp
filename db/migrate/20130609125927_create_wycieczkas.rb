class CreateWycieczkas < ActiveRecord::Migration
  def change
    create_table :wycieczkas do |t|
      t.integer :wycieczka_id
      t.string :nazwa
      t.date :data

      t.timestamps
    end
  end
end
