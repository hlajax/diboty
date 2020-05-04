class Forme < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
	has_many :loyerentreprises
end
