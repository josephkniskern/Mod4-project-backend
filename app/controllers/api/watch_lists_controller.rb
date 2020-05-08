class Api::WatchListsController < ApplicationController

  def index 
    watchLists = Watchlist.all

    render json: watchlists
  end

  def show
    watchlist = Watchlist.find(params[:id])
    
    render json: watchlist
  end

  # def update 
  #   watchlist = watchlist.find(params[:id])

  #   watchlist.update(likes: params[:list_item])

  #   render json: watchlist
  # end

  def create 
    Watchlist.create(params[:list_item])

    render json: watchlist
  end

  def delete 
    Watchlist.destroy 

  end




end
