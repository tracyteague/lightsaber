require 'sinatra'

get '/' do
  'Tracy Festa Teague'
end

# "show RESTFUL command
get '/sealions/:id' do
  show = Sealion.find(params[:id])
  "Name: #{show.first_name} #{show.last_name}, Age: #{show.age}, Location: #{show.location}, Quirk: #{show.quirk}"
end

get '/sealions' do
  Sealion.all.to_json
end

#changed redirect to '/sealions/:id' with new sealion object
post '/sealions' do
  Sealion.create{params}
  redirect '/sealions'
end

#changed redirect to '/sealions/:id' with new update
put '/sealions' do
  Sealion.find(params[:id]).update_attributes!(params)
  redirect '/sealions'
end

delete '/sealions' do
  Sealion.find(params[:id]).destroy!
  redirect '/sealions'
end

# NOTE TO SELF: May want to edit redirect for post/puts
# to be /sealions/:id