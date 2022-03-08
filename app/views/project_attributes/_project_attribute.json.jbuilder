json.extract! project_attribute, :id, :title, :datatype, :required, :created_at, :updated_at
json.url project_attribute_url(project_attribute, format: :json)
