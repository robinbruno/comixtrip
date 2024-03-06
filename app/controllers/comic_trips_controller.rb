class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def home
    @comic_trips = ComicTrip.all
    # # randomize the carousel
    @random_comic_trip = ComicTrip.order("RANDOM()").first
  end

  def index
    # show a filtered search on a Grid 2x2 (view)
  end


  def show

  end

  def new
    @comic_trips = ComicTrip.new
    # here we have to work on render 2 partials _preview and _workarea

  end

  def create

  end

  def update

  end

  def destroy

  end



end
