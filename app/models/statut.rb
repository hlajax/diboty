class Statut < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
	has_many :kits
	has_many :chefs
  	has_many :comptes
  	has_many :banquealimentaires
end
