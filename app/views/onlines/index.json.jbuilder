json.array!(@onlines) do |online|
  json.extract! online, :id, :number, :number_machines, :number_operator
  json.url online_url(online, format: :json)
end
