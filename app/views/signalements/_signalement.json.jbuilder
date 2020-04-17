json.extract! signalement, :id, :pays, :ville, :nom, :sexe_id, :passeport, :contact_whatsapp, :date, :raison_du_sejour, :enfants, :pieces_jointes, :created_at, :updated_at
json.url signalement_url(signalement, format: :json)
