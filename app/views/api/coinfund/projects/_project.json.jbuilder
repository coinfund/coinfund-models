json.name project.name
json.homepage project.homepage

if project.association_cached?(:sector)
  json.sector project.sector.name
end