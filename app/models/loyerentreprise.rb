class Loyerentreprise < ApplicationRecord
	mount_uploader :fiche, FichierUploader
	belongs_to :province
	belongs_to :forme
	belongs_to :siege
	#belongs_to :situation
	belongs_to :chef
	belongs_to :distribue
	belongs_to :actu
	belongs_to :compte
end
