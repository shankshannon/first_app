class WelcomeController < ApplicationController
  def index
    flash[:warning] = 'zheshijinggao'
  end
end
