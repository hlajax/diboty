class Banquealimentaire < ApplicationRecord
	belongs_to :chef
	belongs_to :situation
	belongs_to :statut
	belongs_to :actu
	belongs_to :distribue
	belongs_to :compte
end
