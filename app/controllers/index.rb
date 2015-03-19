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
  Sealion.create{params}
  redirect '/sealions'
end

put '/sealions' do
  Sealion.find(params[:id]).update_attributes!(params)
  redirect '/sealions'
end

delete '/sealions' do
  Sealion.find(params[:id]).destroy!
  redirect '/sealions'
end
