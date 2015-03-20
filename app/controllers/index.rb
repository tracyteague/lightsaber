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
  new_sealion = Sealion.create(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], location: params[:location], quirk: params[:quirk])
  redirect "/sealions/#{new_sealion.id}"
end

get '/sealions/:id' do
  @sealion = Sealion.find_by(id: params[:id])
  erb :show
end

get '/sealions/:id/edit' do
   @sealion = Sealion.find_by(id: params[:id])
   erb :edit
 end

put '/sealions/:id/edit' do
  @sealion = Sealion.find_by(id: params[:id])

  if @sealion
    @sealion.first_name = params[:first_name]
    @sealion.last_name = params[:last_name]
    @sealion.age = params[:age]
    @sealion.location = params[:location]
    @sealion.quirk = params[:quirk]

    if @sealion.save
      redirect "/sealions/#{@sealion.id}"
    else
      [500, '"Ar, ar - arr-or! Something seems to have went wrong.']
    end

  else
    [404, "Ar, ar - arr-or! This sealion has not been found."]
  end
end

delete '/sealions/:id' do
  sealion = Sealion.find_by(id: params[:id])
  sealion.destroy!
  redirect '/sealions'
end