class Loyerentreprise < ApplicationRecord
	belongs_to :province
	belongs_to :ville
	belongs_to :arrondissement
	belongs_to :type
	belongs_to :construction
	belongs_to :piece
	belongs_to :situation
	belongs_to :chef
end
