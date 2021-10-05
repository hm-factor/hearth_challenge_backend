class Api::HomesController < ApplicationController

  def search
    @homes = Home.all
    render :search
  end

end