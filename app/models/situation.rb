class Situation < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
	has_many :loyers
	has_many :loyerentreprises
end
