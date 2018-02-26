require 'rails_helper'

RSpec.describe 'Authetications API', type: :request do
  # initialize test data
  let!(:users) { create_list(:user, 1) }

  # Test suite for POST /authentications
  describe 'POST /authentications' do

    # valid payload
    let(:valid_attributes) { {
      user: {
        username: 'test',
        password: '123456',
      }
    } }

    let(:invalid_attributes) { {
      user: {
        username: 'test1',
        password: '123456',
      }
    } }

    context 'when the request is valid' do
      before { post '/v1/authentications', params: valid_attributes }

      it 'creates a todo' do
        expect(json['data']['auth']['token']).not_to be_empty
      end

      it 'returns status code :created' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/v1/authentications', params: invalid_attributes }

      it 'returns status code :unauthorized' do
        expect(response).to have_http_status(401)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match('invalid credentials')
      end
    end

  end
end
