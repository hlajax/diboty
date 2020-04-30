class Sex < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
  	has_many :loyers
  	has_many :signalements
  	has_many :chefs
  	has_many :comptes
end
