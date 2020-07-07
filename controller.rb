require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/film')
also_reload('./models/*')

get('/films') do
    erb(:index)
end

get('/film/:id') do
    @film = params['id']
    erb(:film)
end