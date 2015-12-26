json.array!(@applications) do |application|
  json.extract! application, :id, :version, :application_type_id, :remark
  json.url application_url(application, format: :json)
end
