class CreateBookletOffers < ActiveRecord::Migration
  def change
    create_table :booklet_offers do |t|
      t.references :product, index: true
      t.references :booklet, index: true

      t.timestamps
    end
  end
end
