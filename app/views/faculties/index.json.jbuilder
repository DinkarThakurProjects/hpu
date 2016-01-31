json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :image_path, :qualification, :joined_year, :total_experience, :is_chairman
  json.url faculty_url(faculty, format: :json)
end
