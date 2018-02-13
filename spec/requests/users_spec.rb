require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  # Test suite for POST /users
  describe 'POST /users' do
    let(:valid_attributes) {{
      user: {
        username: 'test',
        password: '123456',
        email: 'test@test.com'
      }
    }}

    let(:invalid_attributes) {{
      user: {
        username: 'test',
        password: '1',
        email: 'test@test.com'
      }
    }}

    context 'when the request is valid' do
      before { post '/v1/users', params: valid_attributes }

      it 'creates a user' do
        expect(json['data']['user']['username']).to eq('test')
      end

      it 'returns status code :created' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/v1/users', params: invalid_attributes }

      it 'returns status code :unprocessable_entity' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Password is too short/)
      end
    end
  end
end
