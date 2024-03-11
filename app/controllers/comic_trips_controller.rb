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
    # vignette1, vignette2, vignette3
    @comic_trip = ComicTrip.new(comic_params)
    @vignette1 = Vignette.new(vignette1_params)
    @comic_trip.user = current_user
    if @comic_trip.save
    if @vignette1.save
      redirect_to   ,notice: "Vignette was successfully created."

    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

  end

  def destroy

  end

  private

  def comic_params
    params.require(:comic).permit(:title, :dialogue1, :dialogue2)
  end

  def vignette1_params
    params.require(:vignette1).permit(:dialogue1, :dialogue2)

  end


end
