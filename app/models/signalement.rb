class Signalement < ApplicationRecord
	mount_uploader :pieces_jointes, FichierUploader
	belongs_to :sex
	belongs_to :chef
end
