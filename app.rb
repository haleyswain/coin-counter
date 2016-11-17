require('sinatra')
require('sinatra/reloader')
require('./lib/coin')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/change_output') do
  @yourchange = params.fetch('change').to_i.coin()
  erb(:change_output)
end
