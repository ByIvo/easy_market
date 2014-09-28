class AddPriceToBookletOffer < ActiveRecord::Migration
  def change
    add_column :booklet_offers, :price, :decimal
  end
end
