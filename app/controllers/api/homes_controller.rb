class Api::HomesController < ApplicationController

  def search
    @search = params[:search_params]
    @homes = Home.where("address like ?", "%#{@search}%")
    render :search
  end

end