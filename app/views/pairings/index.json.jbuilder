json.array!(@pairings) do |pairing|
  json.extract! pairing, :id, :from, :till, :student, :teacher, :repo
  json.url pairing_url(pairing, format: :json)
end
