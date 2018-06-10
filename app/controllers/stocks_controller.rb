# 
class StocksController < ApplicationController
  def search
    if params[:stock].blank?
      flash.now[:danger] = 'You have entered an empty search string'
    else
      #Calling the self.method from model stock.rb file.
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = 'You have entered an invalid stock ticker' unless @stock
    end
    render partial: 'users/result'
  end
end