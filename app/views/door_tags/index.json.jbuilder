json.array!(@door_tags) do |door_tag|
  json.extract! door_tag, :id, :tag
  json.url door_tag_url(door_tag, format: :json)
end
