json.array!(@huerta) do |huertum|
  json.extract! huertum, :id, :name, :type, :user_id
  json.url huertum_url(huertum, format: :json)
end
