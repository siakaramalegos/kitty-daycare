json.array!(@cats) do |cat|
  json.extract! cat, :id, :name, :owner_id, :breed_id, :dob, :allergies, :vet_name, :vet_phone, :in_daycare
  json.url cat_url(cat, format: :json)
end
