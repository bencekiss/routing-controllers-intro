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

end
