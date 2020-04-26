# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_26_160645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arrondissements", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_arrondissements_on_slug", unique: true
  end

  create_table "chefs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "telephone"
    t.integer "nationalite_id"
    t.integer "sex_id"
    t.integer "situation_id"
    t.integer "statut_id"
    t.integer "ville_id"
    t.integer "province_id"
    t.string "nationalite"
    t.string "commune"
    t.string "quartier"
    t.string "date"
    t.string "lieu"
    t.string "cnamgs"
    t.string "cnss"
    t.string "one"
    t.string "religion"
    t.string "lieu_de_priere"
    t.integer "arrondissement_id"
    t.index ["email"], name: "index_chefs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_chefs_on_reset_password_token", unique: true
  end

  create_table "constructions", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_constructions_on_slug", unique: true
  end

  create_table "detresses", force: :cascade do |t|
    t.string "pays"
    t.string "ville"
    t.string "nom"
    t.integer "sexe_id"
    t.string "passeport"
    t.string "contact_whatsapp"
    t.string "date"
    t.text "raison_du_sejour"
    t.string "enfants"
    t.string "pieces_jointes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distribues", force: :cascade do |t|
    t.string "titre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "don_numeraires", force: :cascade do |t|
    t.string "nom"
    t.string "nom_entreprise"
    t.string "numero_de_telephone"
    t.string "email"
    t.string "adresse"
    t.string "montant"
    t.integer "nature_id"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dons", force: :cascade do |t|
    t.string "nom"
    t.string "nom_entreprise"
    t.string "numero_de_telephone"
    t.string "email"
    t.string "adresse"
    t.text "detail"
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "habitats", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_habitats_on_slug", unique: true
  end

  create_table "kits", force: :cascade do |t|
    t.integer "commune_id"
    t.integer "arrondissement_id"
    t.string "quartier"
    t.string "nom"
    t.integer "sex_id"
    t.string "date_de_naissance"
    t.string "lieu_de_naissance"
    t.integer "statut_id"
    t.string "niveau_etude_mere"
    t.string "activite_mere"
    t.string "revenu_mensuel"
    t.integer "habitat_id"
    t.string "telephones"
    t.string "email"
    t.string "activite_professionnelle"
    t.string "cnamgs"
    t.string "cnss"
    t.string "religion"
    t.string "lieu_de_priere"
    t.string "nombre_handicap"
    t.string "nombre_agees"
    t.string "nombre_mere"
    t.string "nombre_jeune"
    t.string "nombre_orphelin"
    t.string "numero_compteur"
    t.string "numero_canal"
    t.string "numero_mobile_money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "commune"
    t.string "arrondissement"
    t.string "loyer"
    t.integer "chef_id"
    t.integer "distribue_id"
  end

  create_table "loyerentreprises", force: :cascade do |t|
    t.string "nom_proprietaire"
    t.string "date_de_naissance_proprietaire"
    t.string "lieu_de_naissance_proprietaire"
    t.string "telephones_proprietaire"
    t.string "email_proprietaire"
    t.string "lieu_de_residence_proprietaire"
    t.string "raison_sociale"
    t.string "secteur"
    t.string "fiche"
    t.string "rccm"
    t.string "nif"
    t.string "telephones"
    t.string "email"
    t.string "cnamgs"
    t.string "cnss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "type_id"
    t.integer "construction_id"
    t.integer "province_id"
    t.integer "ville_id"
    t.integer "arrondissement_id"
    t.string "loyer_mensuel"
    t.string "loyer_trimestriel"
    t.string "adresse"
    t.string "quartier"
    t.string "autre"
    t.integer "situation_id"
    t.integer "piece_id"
    t.string "numero_piece"
  end

  create_table "loyers", force: :cascade do |t|
    t.string "nom_proprietaire"
    t.string "date_de_naissance_proprietaire"
    t.string "lieu_de_naissance_proprietaire"
    t.string "telephones_proprietaire"
    t.string "email_proprietaire"
    t.string "lieu_de_residence_proprietaire"
    t.string "nom_locataire"
    t.string "nationalite_locataire"
    t.string "profession_locataire"
    t.string "date_de_naissance_locataire"
    t.string "lieu_de_naissance_locataire"
    t.string "telephones_locataire"
    t.string "email_locataire"
    t.string "employeur_locataire"
    t.string "secteur_locataire"
    t.string "cnamgs_locataire"
    t.string "cnss_locataire"
    t.string "justification_locataire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "piece_id"
    t.integer "piece_locataire_id"
    t.integer "sex_id"
    t.integer "type_id"
    t.integer "construction_id"
    t.integer "province_id"
    t.integer "ville_id"
    t.integer "arrondissement_id"
    t.string "loyer_mensuel"
    t.string "loyer_trimestriel"
    t.string "adresse"
    t.string "quartier"
    t.string "autre"
    t.string "numero_piece"
    t.string "numero_piece_locataire"
    t.integer "situation_id"
    t.integer "chef_id"
    t.integer "distribue_id"
  end

  create_table "natures", force: :cascade do |t|
    t.string "nom"
    t.text "detail"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_natures_on_slug", unique: true
  end

  create_table "piece_locataires", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_piece_locataires_on_slug", unique: true
  end

  create_table "pieces", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_pieces_on_slug", unique: true
  end

  create_table "provinces", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_provinces_on_slug", unique: true
  end

  create_table "sexes", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_sexes_on_slug", unique: true
  end

  create_table "signalements", force: :cascade do |t|
    t.string "pays"
    t.string "ville"
    t.string "nom"
    t.integer "sexe_id"
    t.string "passeport"
    t.string "contact_whatsapp"
    t.string "date"
    t.text "raison_du_sejour"
    t.string "enfants"
    t.string "pieces_jointes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sex_id"
  end

  create_table "situations", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_situations_on_slug", unique: true
  end

  create_table "statuts", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_statuts_on_slug", unique: true
  end

  create_table "types", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_types_on_slug", unique: true
  end

  create_table "villes", force: :cascade do |t|
    t.string "nom"
    t.text "description"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "province_id"
    t.index ["slug"], name: "index_villes_on_slug", unique: true
  end

end
