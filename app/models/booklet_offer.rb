class BookletOffer < ActiveRecord::Base
  belongs_to :product
  belongs_to :booklet
end
