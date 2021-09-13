class QuotesController < ApplicationController
  def index
    @random_quotes = Quote.order('RANDOM()').limit(10)
  end
end
