class CreateBooklets < ActiveRecord::Migration
  def change
    create_table :booklets do |t|
      t.string :name
      t.string :image_path

      t.timestamps
    end
  end
end
