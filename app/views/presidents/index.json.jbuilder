json.array!(@presidents) do |president|
  json.extract! president, :id, :presidentNumber, :name, :biography, :termStart, :termEnd, :partyAffiliation, :picture, :state, :term
  json.url president_url(president, format: :json)
end
