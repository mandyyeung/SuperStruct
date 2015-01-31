json.array!(@subcontractors) do |subcontractor|
  json.extract! subcontractor, :id, :bp, :company, :contact, :address, :phone, :trade, :contract_value, :logo, :notes
  json.url subcontractor_url(subcontractor, format: :json)
end
