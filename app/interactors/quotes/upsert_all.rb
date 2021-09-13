module Quotes
  class UpsertAll
    include Interactor

    delegate :quotes, to: :context

    def call
      Quote.upsert_all(quotes, unique_by: :provider_id)
    end
  end
end
