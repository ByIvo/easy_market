class AddMarketToBooklet < ActiveRecord::Migration
  def change
    add_reference :booklets, :market, index: true
  end
end
