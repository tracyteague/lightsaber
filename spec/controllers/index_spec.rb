require_relative '../spec_helper.rb'

describe 'index.rb' do
#last_request
let(:tracy) { Sealion.create(first_name: "Tracy", last_name: "Teague", age: 25, location: "New York, NY", quirk: "Puts ketchup on everything") }
#-----GET------

  describe '#get' do

    it 'should get the /sealions route' do
      get '/sealions'
      expect(last_response).to be_ok

    end

    it 'should get a specific sealion from the database' do
      get "/sealions/#{tracy.id}" #don't hardcode #always double quotes string interp
      expect(last_response).to be_ok
      expect(last_response.body).to include("Tracy Teague")
    end

  end

#-----POST-----

#   describe '#post' do

# # Would I be able to use 'let' to create a new Sealion
# # simply for testing to be available for the whole test?
# # I hard-coded an id: 5 here for testing purposes

#     it 'should post new information to the /sealions route' do
#       post '/sealions', :params => {id: 5, first_name: "Link", last_name: "Blaine", age: 27, location: "New York, NY", quirk: "Making raindrop cheek noises."}
#       expect(Sealion.find(5)).to include("Link Blaine")
#     end

# # Same quesiton as above re: using let

#     it 'should redirect to the /sealions route'
#       post '/sealions', :params => {first_name: "Link", last_name: "Blaine", age: 27, location: "New York, NY", quirk: "Making raindrop cheek noises."}
#       expect(last_response).to be_redirect
#       follow_redirect!
#       expect(last_response).to be_ok
#       expect(last_response.body).to include(Sealion.all.to_json)
#     end
#   end

#-----PUT-----

  describe '#put' do

# If I used let, would I be able to update the Sealion object's
# info within the do..end block to test if it changed only
# within the scope of this test?
    it 'should update the params of a Sealion' do
      put '/sealions', Sealion.find(5).update_attributes!(first_name: "Zack")
      expect(Sealion.find(5)).to include("Zack Blaine")
    end

    it 'should redirect to the /sealions route' do
      put '/sealions', Sealion.find(5).update_attributes!(first_name: "Zack")
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include(Sealion.all.to_json)
    end

  end

#-----DELETE-----

  describe '#delete' do

    it 'should destroy a Sealion object' do
      delete '/sealions', Sealion.find(5).destroy!
      # I expect that when searching for the Sealion with id: 5,
      # the Sealion won't be found.

    end

    it 'should redirect to the /sealions route' do
      delete '/sealions'
      expect(last_response).to be_redirect
      follow_redirect!
      expect(last_response).to be_ok
      expect(last_response.body).to include(Sealion.all.to_json)
    end

  end

end
# NOTE TO SELF: If change redirect in post/put, fix tests