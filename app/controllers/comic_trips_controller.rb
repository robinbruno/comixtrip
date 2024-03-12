class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :new, :create, :update ]

  def home
    @comic_trips = ComicTrip.all
    # # randomize the carousel
    # @random_comic_trip = ComicTrip.order("RANDOM()").first
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
    # Create instance comic new and link to user(id)
    @comic_trip = ComicTrip.new(comic_params)
    @comic_trip.user = current_user
    @comic_trip.save!

    p "Vignette 1"

    # Create instance vignette1 new and link to comic(id)
    @vignette1 = Vignette.new(vignette1_params)
    @vignette1.comic_trip = @comic_trip
    @vignette1.save!

    # Create instance 3 compo to join all Elements new and link to comic(id)
    p params[:elements]
    compo1 = Composition.new
    compo1.vignette = @vignette1
    compo1.element = Element.find(params[:elements][:element1])
    compo1.save!

    compo2 = Composition.new
    compo2.vignette = @vignette1
    compo2.element = Element.find(params[:elements][:element2])
    compo2.save!

    compo3 = Composition.new
    compo3.vignette = @vignette1
    compo3.element = Element.find(params[:elements][:element3])
    compo3.save!

    p @comic_trip
    p @vignette1

    p "Vignette 2"

    # Create instance vignette2 new and link to comic(id)
    @vignette2 = Vignette.new(vignette1_params)
    @vignette2.comic_trip = @comic_trip
    @vignette2.save!

    # Create instance 3 compo to join all Elements new and link to comic(id)
    p params[:elements]
    compo1 = Composition.new
    compo1.vignette = @vignette2
    compo1.element = Element.find(params[:elements][:element1])
    compo1.save!

    compo2 = Composition.new
    compo2.vignette = @vignette2
    compo2.element = Element.find(params[:elements][:element2])
    compo2.save!

    compo3 = Composition.new
    compo3.vignette = @vignette2
    compo3.element = Element.find(params[:elements][:element3])
    compo3.save!

    p @comic_trip
    p @vignette2

    p "Vignette 3"

    # Create instance vignette3 new and link to comic(id)
    @vignette3 = Vignette.new(vignette1_params)
    @vignette3.comic_trip = @comic_trip
    @vignette3.save!

    # Create instance 3 compo to join all Elements new and link to comic(id)
    p params[:elements]
    compo1 = Composition.new
    compo1.vignette = @vignette3
    compo1.element = Element.find(params[:elements][:element1])
    compo1.save!

    compo2 = Composition.new
    compo2.vignette = @vignette3
    compo2.element = Element.find(params[:elements][:element2])
    compo2.save!

    compo3 = Composition.new
    compo3.vignette = @vignette3
    compo3.element = Element.find(params[:elements][:element3])
    compo3.save!

    p @comic_trip
    p @vignette3

    if @comic_trip.save
      redirect_to @comic_trip, notice: "Comic was successfully created."
    else
      render :new, status: :unprocessable_entity
    end

  end

  def update

  end

  def destroy
    @comic_trip.destroy!
    redirect_to comics_url, notice: "Your Comics Trip was successfully destroyed.", status: :see_other
  end

  private

  def comic_params
    params.require(:comic_trip).permit(:title, :category)
  end

  def vignette1_params
    params.require(:vignette1).permit(:text01, :text02)
  end

  def vignette2_params
    params.require(:vignette2).permit(:text01, :text02)
  end

  def vignette3_params
    params.require(:vignette3).permit(:text01, :text02)
  end

end
