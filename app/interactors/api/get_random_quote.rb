module Api
  class GetRandomQuote
    include Interactor
    include HTTParty

    base_uri 'http://quotes.stormconsultancy.co.uk/'
    format :json

    def call
      headers = { 'Content-Type' => 'application/json', 'Accept' => 'application/json' }
      response = self.class.get('/random.json', headers: headers)
      context.api_response = response.parsed_response
    end
  end
end
