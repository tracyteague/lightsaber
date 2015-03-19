require_relative '../spec_helper.rb'

describe 'index.rb' do

  #get
  describe '#get' do

    it 'should get the /sealions route' do
      get '/sealions'
      expect(last_response).to be_ok
    end

    it 'should get a specific sealion from the database' do
      get '/sealions/1'
      expect(last_response).to be_ok
      expect(last_response.body).to include("Tracy Teague")
    end

  end


  describe '#post' do

    it 'should post new information to the /sealions route' do
      post '/sealions', :params => {id: 5}
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include(Sealion.all.to_json)
    end

  end

  #put
  describe '#put' do

    it 'should return to the /sealions route' do
      put '/sealions', :params => with_a_param=true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include(Sealion.all.to_json)
    end

  end

  #delete
  #took out params as Ashi stated delete generally
  #only needs the id from the route
  describe '#delete' do

    it 'should destroy information in the /sealions route' do
      delete '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include(Sealion.all.to_json)
    end

  end

end