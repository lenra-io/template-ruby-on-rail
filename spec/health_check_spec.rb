require 'rails_helper'

RSpec.describe 'Health Check', :type => :request do
  describe 'get' do
    it 'return success json' do
      get '/health_check'
      expect(response.body).to eq({ success: true }.to_json)
    end
  end
  describe 'post' do
    it 'return success json' do
      post '/health_check'
      expect(response.body).to eq({ success: true }.to_json)
    end
  end
end
