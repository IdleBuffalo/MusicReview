class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :artist
      t.string :album
      t.text :description
      t.string :release
      t.string :rating

      t.timestamps null: false
    end
  end
end
