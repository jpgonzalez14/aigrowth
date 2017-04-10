json.array!(@planta) do |plantum|
  json.extract! plantum, :id, :nombre, :huerta_id
  json.url plantum_url(plantum, format: :json)
end
