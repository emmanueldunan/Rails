json.array!(@swits) do |swit|
  json.extract! swit, :id, :content
  json.url swit_url(swit, format: :json)
end
