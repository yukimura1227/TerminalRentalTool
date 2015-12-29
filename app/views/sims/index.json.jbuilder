json.array!(@sims) do |sim|
  json.extract! sim, :id, :phone_number, :rental_status_id, :remark
  json.url sim_url(sim, format: :json)
end
