class SearchController < ApplicationController
    
  def index
  end
  
  def result

    key = params[:key]
    
    if key[:way].to_i == 0
      @microposts = Micropost.search0(params[:tag]).order(created_at: :desc)
    else
      @microposts = Micropost.search1(params[:tag]).order(created_at: :desc)
    end
  end
  
end
