json.array!(@operations) do |operation|
  json.extract! operation, :id, :name, :description, :machine, :time_stadar, :area_id
  json.url operation_url(operation, format: :json)
end
