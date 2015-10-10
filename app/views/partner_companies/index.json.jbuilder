json.array!(@partner_companies) do |partner_company|
  json.extract! partner_company, :id, :name
  json.url partner_company_url(partner_company, format: :json)
end
