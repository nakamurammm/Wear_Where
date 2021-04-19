class SearchController < ApplicationController
  def search
        @dress = params[:dress]
        @search = params[:search]
    
  end
end
