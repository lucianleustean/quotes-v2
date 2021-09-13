require 'rails_helper'

describe Quotes::UpsertAll do
  subject(:context) { described_class.call(quotes: [quote]) }

  let(:quote) do
    { provider_id: 1, quote: 'dummy quote', author: 'someone', created_at: DateTime.now,
      updated_at: DateTime.now }
  end

  it 'saves quote to database' do
    expect { context }.to change(Quote, :count).by(1)
  end

  it "doesn't add the quote if there is one already (uniq by provider_id)" do
    Quote.create(provider_id: 1)
    expect { context }.not_to change(Quote, :count)
  end
end
