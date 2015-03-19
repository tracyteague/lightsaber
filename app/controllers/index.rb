require 'sinatra'

get '/' do
  'Tracy Festa Teague'
end

get '/sealions/new' do
  'This is where I will create a form to post a new Sealion.'
end

post '/sealions/new' do
  new_sealion = Sealion.create{params}
  redirect "/sealions/#{new_sealion.id}"
end

# "show RESTFUL command
get '/sealions/:id' do
  sealion = Sealion.find(params[:id])
  "Name: #{sealion.first_name} #{sealion.last_name}, Age: #{sealion.age}, Location: #{sealion.location}, Quirk: #{sealion.quirk}"
end

get '/sealions' do
  Sealion.all.to_json
end

put '/sealions/:id' do
  Sealion.find_by(id: params[:id]).update_attributes!(params)
  redirect '/sealions/:id'
end

delete '/sealions/:id' do
  sealion = Sealion.find_by(id: params[:id])
  sealion.destroy!
  redirect '/sealions'
end