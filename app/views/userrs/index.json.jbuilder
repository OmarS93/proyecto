json.array!(@userrs) do |userr|
  json.extract! userr, :id, :name, :description
  json.url user_url(userr, format: :json)
end
