class UsersController < ApplicationController
  def my_portfolio
    @trakcer_stocks = current_user.stocks
  end
end
