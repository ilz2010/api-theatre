json.response @models do |m|
	json.(m, :id, :date)

	json.perf(m.t_perf.perf, :id, :name)
	json.timestamps(m, :created_at, :updated_at, :deleted_at)
end