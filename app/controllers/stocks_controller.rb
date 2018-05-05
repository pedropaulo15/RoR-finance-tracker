class StocksController < ApplicationController

    def search
        #Calling the self.method from stock.rb file.  
        Stock.new_from_lookup(params[:stock]) 
    end
end