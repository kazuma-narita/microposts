class SearchController < ApplicationController
    
  def index
  end
  
  def result
    @microposts = Micropost.search(params[:tag])
  end
  
end
