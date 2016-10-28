class CreateHikesinfos < ActiveRecord::Migration
  def change
    create_table :hikesinfos do |t|

      t.timestamps
    end
  end
end
