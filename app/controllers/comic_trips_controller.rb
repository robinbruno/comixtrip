class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :update ]

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
    @comic_trip = ComicTrip.new
  end

  def create
    p "hello from comic_trips_controller"
    @comic_trip = ComicTrip.new(comic_params)
    @comic_trip.user = current_user
    @comic_trip.save!

    @vignette1 = Vignette.new(vignette1_params)
    @vignette1.comic_trip = @comic_trip
    @vignette1.save!

    p @comic_trip
    p @vignette1



    # # if @comic_trip.save
    # if @vignette1.save
    #   # redirect_to   ,notice: "Vignette was successfully created."

    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def update

  end

  def destroy

  end

  private

  def comic_params
    params.require(:comic_trip).permit(:title, :category)
  end

  def vignette1_params
    params.require(:vignette1).permit(:text01, :text02)
  end


end
