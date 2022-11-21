# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Transactions', type: :request do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.create(name: 'Name', email: 'a@mail.com', password: 'password') }

  context 'GET /index' do
    before(:each) do
      sign_in user
      get '/transactions'
    end
    it 'transactions index is successful' do
      expect(response).to have_http_status(:ok)
    end
    it 'Renders correct template' do
      expect(response).to render_template(:index)
    end
    it 'Does not render wrong template' do
      expect(response).to_not render_template(:show)
    end
    it 'Response body includes correct placeholder text' do
      expect(response.body).to include('TRANSACTIONS')
    end
  end
  context 'GET /show' do
    before(:each) do
      sign_in user
      get '/transactions/:id'
    end
    it 'transactions show is successful' do
      expect(response).to have_http_status(:ok)
    end
    it 'Renders correct template' do
      expect(response).to render_template(:index)
    end
    it 'Does not render wrong template' do
      expect(response).to_not render_template(:show)
    end
    it 'Response body includes correct placeholder text' do
      expect(response.body).to include('TRANSACTIONS')
    end
  end
end
