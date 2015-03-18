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

  #post
  describe '#post' do

    it 'should post new information to the /sealions route' do
      post '/sealions', :params => {id: 5}
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('SeALiOnZ')
    end


  end

  #put
  describe '#put' do

    it 'should update data in the /sealions route' do
      put '/sealions', :params => with_a_param=true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('SeALiOnZ')
    end

  end

  #delete
  describe '#delete' do

    it 'should destroy information in the /sealions route' do
      delete '/sealions', :params => with_a_param=true
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include('SeALiOnZ')
    end

  end

end