json.array!(@pc_terminals) do |pc_terminal|
  json.extract! pc_terminal, :id, :name, :manage_id, :rental_status_id, :remark
  json.url pc_terminal_url(pc_terminal, format: :json)
end
