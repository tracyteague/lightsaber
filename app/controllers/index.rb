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

#changed redirect to '/sealions/:id' with new sealion object
post '/sealions' do
  Sealion.create{params}
  redirect '/sealions/:id'
end

#changed redirect to '/sealions/:id' with new update
put '/sealions' do
  Sealion.find(params[:id]).update_attributes!(params)
  redirect '/sealions/:id'
end

delete '/sealions' do
  Sealion.find(params[:id]).destroy!
  redirect '/sealions'
end

# NOTE TO SELF: May want to edit redirect for post/puts
# to be /sealions/:id