class Booklet < ActiveRecord::Base
	has_many :booklet_offers
	has_many :products, through: :booklet_offers
	belongs_to :market
end
