json.response do

  # For next requests
  json.timestamp Time.now.to_i

  json.articles @articles do |a|
    json.img(ENV['API_SERVER_PATH'] + 'img/' + a.img + '.png')
    json.(a, :id, :name, :desc)
    json.date a.updated_at
    json.theatre_name a.theatre.name
  end

  json.actors @actors do |a|
    json.call(a, :id, :name, :desc, :img)
  end

  json.performances @perfs do |p|
    json.(p, :id, :desc)
    json.img(ENV['API_SERVER_PATH'] + 'img/' + p.img + '.png')
    json.(p.perf, :author, :name, :p_type_id)
    json.theatre_id p.theatre.id
    json.theatre_name p.theatre.name
    json.hall_name p.t_hall.name
    json.actors p.actor_ids

    json.merge! UtilsController.get_pstrs(p)
  end

  json.theatres @theatres do |a|
    json.(a, :id, :name, :desc, :address)
    json.img(ENV['API_SERVER_PATH'] + 'img/' + a.img + '.png')
    # json.t_perfs a.t_perfs do |p|
    # 	json.(p.perf, :author, :name, :p_type_id)
    # 	json.(p, :desc)
    # 	json.img (ENV['API_SERVER_PATH'] + 'img/' + p.img + '.png')
    # 	json.hall_name p.t_hall.name
    # end
  end

end
