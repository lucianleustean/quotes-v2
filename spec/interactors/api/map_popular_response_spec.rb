require 'rails_helper'

describe Api::MapPopularResponse do
  subject(:context) { described_class.call(api_response: response) }

  let(:response) do
    [
      {
        'id' => 1,
        'quote' => 'dummy quote',
        'author' => 'someone'
      }
    ]
  end

  it 'remaps popular quotes response' do
    expected = { provider_id: 1, quote: 'dummy quote', author: 'someone' }
    expect(context.quotes).to include(hash_including(expected))
  end
end
