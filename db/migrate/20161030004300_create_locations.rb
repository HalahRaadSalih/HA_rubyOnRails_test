class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.float :length, :precision => 8, :scale => 5
      t.float :elevation, :precision => 8, :scale => 5
      t.float :highPoint, :precision => 8, :scale => 5
      t.string :url
      t.text :description
      t.decimal :latitude, :precision => 10, :scale => 5
      t.decimal :longitude, :precision => 10, :scale => 5
      t.timestamps
    end
  end
end
