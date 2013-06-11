class CreatePrzystaneks < ActiveRecord::Migration
  def change
    create_table :przystaneks do |t|
      t.integer :przystanek_id
      t.string :nazwa


      t.timestamps
    end
  end
end
