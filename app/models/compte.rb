class Compte < ApplicationRecord
	belongs_to :chef
	has_many :banuqes
	has_many :loyers
	has_many :loyerentreprises
	belongs_to :sex
	belongs_to :statut
	belongs_to :situation
	belongs_to :ville
	belongs_to :province
	belongs_to :arrondissement
end
