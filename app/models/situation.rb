class Situation < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
	has_many :loyers
	has_many :loyerentreprises
	has_many :chefs
  	has_many :comptes
  	has_many :banquealimentaires
end
