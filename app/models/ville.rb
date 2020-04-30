class Ville < ApplicationRecord
	extend FriendlyId
  	friendly_id :nom, use: :slugged
  	belongs_to :province
  	has_many :loyers
  	has_many :loyerentreprises
  	has_many :chefs
  	has_many :comptes
end
