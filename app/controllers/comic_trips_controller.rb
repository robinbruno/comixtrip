class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def home
    @comic_trips = ComicTrip.all
    # # randomize the carousel
    @random_comic_trip = ComicTrip.order("RANDOM()").first
  end

  def index
    @comic_trips = ComicTrip.all
  end


  def show
    @comic_trip = ComicTrip.find(params[:id])
  end

  def new
    @comic_trips = ComicTrip.new
  end

  def create

  end

  def update

  end

  def destroy

  end



end
