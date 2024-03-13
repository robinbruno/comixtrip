class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :new, :create, :update ]

  def home
    @comic_trips = ComicTrip.all
    # # randomize the carousel
    # @random_comic_trip = ComicTrip.order("RANDOM()").first
  end

  def index
    @comic_trips = ComicTrip.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR category ILIKE :query"
      @comic_trips = @comic_trips.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @comic_trip = ComicTrip.find(params[:id])
  end

  def new
    @comic_trip = ComicTrip.new
    @background_elements = Element.where(category: "background")
    @char_elements = Element.where(category: "character")
  end

  def create
    @comic_trip = ComicTrip.new(comic_params)
    @comic_trip.user = current_user
    @comic_trip.save!

    @vignette1 = Vignette.new
    @compVig1Ele1 = Composition.new(vignette_id: @vignette1.id, element_id: Element.where(name: params[:comic][:vig1][:background]))
    @compVig1Ele2 = Composition.new(vignette_id: @vignette1.id, element_id: Element.where(name: params[:comic][:vig1][:char1]))
    @compVig1Ele3 = Composition.new(vignette_id: @vignette1.id, element_id: Element.where(name: params[:comic][:vig1][:char2]))
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
