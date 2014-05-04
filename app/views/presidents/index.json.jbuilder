json.array!(@presidents) do |president|
  json.extract! president, :id, :presidency, :president, :took_office, :left_office, :party, :picture, :state, :term, :biography
  json.url president_url(president, format: :json)
end
