require 'sinatra'

get '/' do
  'Tracy Festa Teague'
end

get '/sealions' do
  'SeALiOnZ'
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