require 'rails_helper'

describe Quotes::SyncPopular do
  subject(:organizer) { described_class.call }

  it 'saves quotes to database' do
    VCR.use_cassette('api/popular_quotes') do
      expect { organizer }.to change(Quote, :count).by(44)
    end
  end
end
