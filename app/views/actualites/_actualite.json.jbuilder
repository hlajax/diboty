json.extract! actualite, :id, :titre, :photo, :lien, :created_at, :updated_at
json.url actualite_url(actualite, format: :json)
