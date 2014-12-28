json.array!(@cds) do |cd|
  json.extract! cd, :id, :grupo, :titulo, :descripcion, :enlace, :fecha, :user_id
  json.url cd_url(cd, format: :json)
end
