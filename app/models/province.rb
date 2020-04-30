class Province < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
  	has_many :villes
  	has_many :loyers
  	has_many :loyerentreprises
  	has_many :chefs
  	has_many :comptes
end
