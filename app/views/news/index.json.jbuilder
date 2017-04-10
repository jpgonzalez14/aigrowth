json.array!(@news) do |news|
  json.extract! news, :id, :titulo, :descripcion
  json.url news_url(news, format: :json)
end
