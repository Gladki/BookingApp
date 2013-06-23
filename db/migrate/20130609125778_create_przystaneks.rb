class CreatePrzystaneks < ActiveRecord::Migration
  def change
    create_table :przystaneks do |t|
      t.integer :przystanek_id
      t.integer :updated_by
      t.string :nazwa


      t.timestamps
    end
  end
end
