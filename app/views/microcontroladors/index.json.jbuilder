json.array!(@microcontroladors) do |microcontrolador|
  json.extract! microcontrolador, :id, :nombre
  json.url microcontrolador_url(microcontrolador, format: :json)
end
