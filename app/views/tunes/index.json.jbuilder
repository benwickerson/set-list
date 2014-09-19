json.array!(@tunes) do |tune|
  json.extract! tune, :id, :tune, :vocal, :key
  json.url tune_url(tune, format: :json)
end
