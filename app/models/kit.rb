class Kit < ApplicationRecord
	belongs_to :sex
	belongs_to :statut
	belongs_to :habitat
end
