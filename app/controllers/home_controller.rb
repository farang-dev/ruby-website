class HomeController < ApplicationController
  def index
    @apikey = StockQuote::Stock.new(api_key: 'pk_be00ed25feaf488b84dcf501317e93fb')
  end

  def about
  end
end
