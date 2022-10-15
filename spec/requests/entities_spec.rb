require 'rails_helper'

RSpec.describe 'Entities', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'user', email: 'example@mail.com', password: 'password') }
  let(:group) do
    Group.create(name: 'Group', icon: 'icon.png', description: 'description', created_at: Time.now, updated_at: Time.now, user_id: user.id)
  end
  let(:entity) do
    Entity.create(name: 'Entity', amount: 20, description: 'description', created_at: Time.now, updated_at: Time.now, user_id: user.id)
  end

  describe 'GET /entities' do
    before(:each) do
      sign_in user
      get '/groups/1/entities/'
    end

    it 'test the response status' do
      expect(response).to have_http_status(200)
    end
    it 'Test If the correct template was rendered' do
      expect(response).to render_template(:index)
    end
  end
end
