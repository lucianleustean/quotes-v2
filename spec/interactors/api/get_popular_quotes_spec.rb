require 'rails_helper'

describe Api::GetPopularQuotes do
  subject(:context) { described_class.call }

  it 'has multiple popular quotes' do
    VCR.use_cassette('api/popular_quotes') do
      expect(context.api_response.count).to eq(44)
    end
  end

  it 'has expected keys' do
    VCR.use_cassette('api/popular_quotes') do
      expect(context.api_response.first.keys).to eq(%w[author id quote permalink])
    end
  end
end
