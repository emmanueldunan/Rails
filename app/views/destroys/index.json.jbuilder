json.array!(@destroys) do |destroy|
  json.extract! destroy, :id, :comment
  json.url destroy_url(destroy, format: :json)
end
