module Api
  class GetPopularQuotes
    include Interactor
    include HTTParty

    base_uri 'http://quotes.stormconsultancy.co.uk/'
    format :json

    def call
      headers = { 'Content-Type' => 'application/json', 'Accept' => 'application/json' }
      response = self.class.get('/popular.json', headers: headers)
      context.api_response = response.parsed_response
    end
  end
end
