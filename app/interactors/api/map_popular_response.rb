module Api
  class MapPopularResponse
    include Interactor

    delegate :api_response, to: :context

    def call
      context.quotes = api_response.map do |response|
        {
          author: response['author'],
          provider_id: response['id'],
          quote: response['quote'],
          created_at: DateTime.now,
          updated_at: DateTime.now
        }
      end
    end
  end
end
