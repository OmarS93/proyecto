json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :document_id, :number_documnet, :name, :last_name, :gender, :email, :telephone, :area_id, :userr_id, :online_id
  json.url instructor_url(instructor, format: :json)
end
