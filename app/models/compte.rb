class Compte < ApplicationRecord
	mount_uploader :photo, FichierUploader
	belongs_to :chef
	has_many :banquealimentaires
	has_many :loyers
	has_many :loyerentreprises
	belongs_to :sex
	belongs_to :statut
	belongs_to :situation
	belongs_to :province
	belongs_to :arrondissement
end
