class Kit < ApplicationRecord
	belongs_to :sex
	belongs_to :statut
	belongs_to :habitat
	belongs_to :chef
	belongs_to :distribue
end
