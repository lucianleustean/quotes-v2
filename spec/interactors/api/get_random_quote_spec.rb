require 'rails_helper'

describe Api::GetRandomQuote do
  subject(:context) { described_class.call }

  it 'returns a list of popular quotes' do
    VCR.use_cassette('api/random_quote') do
      quote = 'The difference between theory and practice is that in theory, ' \
              'there is no difference between theory and practice.'
      expected = {
        'author' => 'Richard Moore',
        'id' => 30,
        'quote' => quote,
        'permalink' => 'http://quotes.stormconsultancy.co.uk/quotes/30'
      }
      expect(context.api_response).to eq(expected)
    end
  end
end
