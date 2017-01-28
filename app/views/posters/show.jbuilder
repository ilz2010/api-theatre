json.response do
    json.(@model, :date)

    json.perf(@model.t_perf.perf, :id, :name, :author)
    json.hall(@model.t_hall, :id, :name)

    json.timestamps(@model, :created_at, :updated_at, :deleted_at)
end
