class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @comic_trips = ComicTrip.where(user: current_user).order(created_at: :desc)
  end
end
