class AddDescrtiptionToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :first_name, :last_name
      t.string :facebook_id
      t.text :description
    end
  end
end
