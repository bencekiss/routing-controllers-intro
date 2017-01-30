class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page header."
  end
  def about
    @header = "I could be the about page."
  end

  def contest
    @header = "Lets see some contest."
  end
  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"

  end

end
