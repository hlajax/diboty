json.extract! statut, :id, :nom, :description, :created_at, :updated_at
json.url statut_url(statut, format: :json)
