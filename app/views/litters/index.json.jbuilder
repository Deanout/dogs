json.array!(@litters) do |litter|
  json.extract! litter, :id, :title, :body
  json.url litter_url(litter, format: :json)
end
