json.array!(@albums) do |album|
  json.extract! album, :id, :artist, :album, :description, :release, :rating
  json.url album_url(album, format: :json)
end
