class PagesController < ApplicationController
  def home
  end

  def about
      render partial: 'about'
  end

  def booking
  end
end
