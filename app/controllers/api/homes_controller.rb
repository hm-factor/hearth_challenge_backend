class Api::HomesController < ApplicationController

  def search
    @search = params[:search_params]
    if @search = ''
      @homes = Home.limit(10)
    else
      @homes = Home.where('lower(address) like ?', '%#{@search}%')
    end
    render :search
  end

end