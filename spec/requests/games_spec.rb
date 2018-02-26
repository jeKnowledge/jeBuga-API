require 'rails_helper'

RSpec.describe 'Games API', type: :request do
  # initialize test data
  let!(:games) { create_list(:game, 10) }
  let(:game_id) { games.first.id }

  # Test suite for GET /games
  describe 'GET /games' do
    # make HTTP get request before each example
    before { get '/v1/games' }

    it 'returns games' do
      expect(json).not_to be_empty
      expect(json['data']['error'].size).to eq(10)
    end

    it 'returns status code :ok' do
      expect(response).to have_http_status(200)
    end
  end


end
