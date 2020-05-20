class Chef < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :kits
         has_many :loyers
         has_many :banquealimentaires
         has_many :dons
         has_many :don_numeraires
         has_many :signalements
         has_many :loyerentreprises
         has_many :comptes
     mount_uploader :photo, FichierUploader
end
