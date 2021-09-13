class QuotesController < ApplicationController
  def index
    @random_quote = Quote.order('RANDOM()').limit(1).first
  end
end
