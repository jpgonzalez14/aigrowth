json.array!(@reportes) do |reporte|
  json.extract! reporte, :id, :tipo, :datos, :planta_id, :microcontrolador_id
  json.url reporte_url(reporte, format: :json)
end
