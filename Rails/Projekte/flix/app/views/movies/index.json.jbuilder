json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :rating, :total_gross, :descreption, :released_on
  json.url movie_url(movie, format: :json)
end
