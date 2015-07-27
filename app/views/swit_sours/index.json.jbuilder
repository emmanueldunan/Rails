json.array!(@swit_sours) do |swit_sour|
  json.extract! swit_sour, :id, :rating
  json.url swit_sour_url(swit_sour, format: :json)
end
