# require 'sinatra'

get '/' do
  @sealions = Sealion.all
  erb :index
end

get '/sealions' do
  @sealions = Sealion.all
  erb :index
end

get '/sealions/new' do
  erb :new
end

post '/sealions/new' do
  new_sealion = Sealion.create{params}
  redirect "/sealions/#{new_sealion.id}"
end

get '/sealions/:id' do
  @sealion = Sealion.find_by(id: params[:id])
  erb :show
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