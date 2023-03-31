class HomeController < ApplicationController
  def index
    @apikey = StockQuote::Stock.new(api_key: 'pk_be00ed25feaf488b84dcf501317e93fb')
    if params[:ticker].blank?
      @nothing = "You forgot to enter a symbol."
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue => exception  
        @error = "That stock symbol does not exist. Please try again."
      end
    end
  end

  def about
  end
end
