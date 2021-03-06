class StocksController < ApplicationController
    
    def search
        if params[:stock].present?
            @stock = Stock.new_lookup(params[:stock])
            if @stock
                respond_to do |format|
                    format.js { render partial: 'users/result'}
                end
            else
                flash[:alert] = "Please enter a correct valid symobl"
                redirect_to my_portfolio_path
            end
        else
            flash[:alert]= "Please Enter a symbol search"
            redirect_to my_portfolio_path
        end
    end
end