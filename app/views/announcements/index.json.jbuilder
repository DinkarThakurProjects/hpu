json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :heading, :description
  json.url announcement_url(announcement, format: :json)
end
