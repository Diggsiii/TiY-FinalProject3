json.array!(@zooms) do |zoom|
  json.extract! zoom, :id, :description
  json.url zoom_url(zoom, format: :json)
end
