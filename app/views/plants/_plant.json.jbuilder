json.extract! plant, :id, :sci_name, :synonyms, :common_name, :family, :genus, :light_reqts, :water_reqts, :foliage_color, :flower_color, :landscape_uses, :native_distribution, :user_id, :created_at, :updated_at
json.url plant_url(plant, format: :json)
