class Loyerentreprise < ApplicationRecord
	mount_uploader :fiche, FichierUploader
	mount_uploader :rccm, FichierUploader
	mount_uploader :nif, FichierUploader
	belongs_to :province
	belongs_to :arrondissement
	belongs_to :situation
	belongs_to :chef
	belongs_to :distribue
	belongs_to :actu
	belongs_to :compte
end
