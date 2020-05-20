class Kitalimentaire < ApplicationRecord
	mount_uploader :piece, FichierUploader
	mount_uploader :photo, FichierUploader
	belongs_to :province
	belongs_to :sex
	belongs_to :compteur
	belongs_to :cnam
	belongs_to :eligible
end
