json.array!(@results) do |result|
  json.extract! result, :id, :name, :description, :attachment
  json.url result_url(result, format: :json)
end
