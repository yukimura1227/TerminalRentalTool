json.array!(@application_types) do |application_type|
  json.extract! application_type, :id, :name, :remark
  json.url application_type_url(application_type, format: :json)
end
