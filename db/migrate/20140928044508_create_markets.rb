class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :image_path
      t.text :address
      t.string :phone
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
