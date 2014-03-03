json.array!(@ways) do |way|
  json.extract! way, :id, :name
  json.url way_url(way, format: :json)
end
