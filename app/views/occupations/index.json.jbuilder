json.array! @occupations do |occupation|
  json.merge! occupation.attributes.except("id", "created_at", "updated_at")
end
