json.extract! piece_locataire, :id, :nom, :description, :slug, :created_at, :updated_at
json.url piece_locataire_url(piece_locataire, format: :json)
