json.array!(@terminals) do |terminal|
  json.extract! terminal, :id, :name, :imei, :rental_status_id, :remark
  json.url terminal_url(terminal, format: :json)
end
