class Api::HomesController < ApplicationController

  def search
    @search = params[:search_params]
    @homes = @search.empty? ? Home.limit(10) : Home.where("lower(address) like ?", "%#{@search}%") 
    render :search
  end

end