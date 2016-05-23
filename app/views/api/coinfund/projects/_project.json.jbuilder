json.name project.name
json.homepage project.homepage
json.status project.status  

if project.association_cached?(:sector)
  json.sector project.sector.name
end

json.watching project.watching
json.engagement project.engagement
json.long project.long