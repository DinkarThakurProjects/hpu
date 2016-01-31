json.array!(@non_teaching_staffs) do |non_teaching_staff|
  json.extract! non_teaching_staff, :id, :name, :image_path, :designation, :qualification, :joined_in, :is_technical
  json.url non_teaching_staff_url(non_teaching_staff, format: :json)
end
