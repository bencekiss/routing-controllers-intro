class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    @header = "This is the welcome page header."
  end
  def about
    @header = "I could be the about page."
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended."
    redirect_to root_url
  end
  def kitten
    # since i set it up at before_action i dont need it
    # set_kitten_url
  end
  def kittens
    # set_kitten_url
  end

  def secrets

    if params[:magic_word] == "shh"

    else

      flash[:alert] = "No secret for you."
      redirect_to kittens_path(500)
    end
  end



  def set_kitten_url
    if params[:size]
      requested_size = params[:size]
    else
      params[:size] = 500
      requested_size = params[:size]
    end

    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end


end
