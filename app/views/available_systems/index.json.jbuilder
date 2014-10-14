json.array!(@available_systems) do |available_system|
  json.extract! available_system, :id
  json.url available_system_url(available_system, format: :json)
end
