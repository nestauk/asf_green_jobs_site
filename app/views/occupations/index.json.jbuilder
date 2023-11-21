json.array! @occupations do |occupation|
  json.merge! occupation.attributes.except("id", "created_at", "updated_at")
  json.industries occupation.industries.select("name", "sic_code", "segments.count", "segments.percentage")
  json.regions occupation.regions.select("name", "locations.percentage")
end
