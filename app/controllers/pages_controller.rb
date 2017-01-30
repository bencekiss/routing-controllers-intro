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
    redirect_to "/welcome"
  end
  def kitten
    # since i set it up at before_action i dont need it
    # set_kitten_url
  end
  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
