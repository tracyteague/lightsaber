require 'sinatra'

get '/' do
  'Tracy Festa Teague'
end

# "show RESTFUL command
get '/sealions/:id' do
  show = Sealion.find(params[:id])
  "#{show.first_name} #{show.last_name}"
end

get '/sealions' do
  Sealion.all.to_json
end

post '/sealions' do
  params
  redirect '/sealions'
end

put '/sealions' do
  params
  redirect '/sealions'
end

delete '/sealions' do
  params
  redirect '/sealions'
end
