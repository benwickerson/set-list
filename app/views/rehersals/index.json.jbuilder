json.array!(@rehersals) do |rehersal|
  json.extract! rehersal, :id, :rehersal
  json.url rehersal_url(rehersal, format: :json)
end
