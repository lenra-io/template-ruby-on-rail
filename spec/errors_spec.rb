require 'rails_helper'

RSpec.describe 'Errors', :type => :request do
  describe '404 not found' do
    it 'return not found json' do
      get '/not_found_route'
      expected_response = {
        type: 'flex',
        children: [{
          type: 'text',
          message: 'Error 404: Not found'
        }]
      }
      expect(response.body).to eq(expected_response.to_json)
    end
  end
end

