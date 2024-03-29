class ComicTripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :index, :create, :update, :admin ]

  def home
    @comic_trips = ComicTrip.all.order(created_at: :desc)
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

    p "hello from comic_trips_controller-create"
    @comic_trip = ComicTrip.new(comic_params)
    @comic_trip.user = current_user
    @comic_trip.save!

    p "Vignette 1"

    @vignette1 = Vignette.new(comic_trip_id:@comic_trip.id, text01: params[:comic][:text1], text02: params[:comic][:text2])
    @vignette1.save!

    name = params[:comic][:vig1][:background] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig1Ele1 = Composition.new(vignette_id: @vignette1.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig1Ele1.save!

    name = params[:comic][:vig1][:character1]
    @compVig1Ele2 = Composition.new(vignette_id: @vignette1.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig1Ele2.save!

    name = params[:comic][:vig1][:character2]
    @compVig1Ele3 = Composition.new(vignette_id: @vignette1.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig1Ele3.save!

    p "Vignette 2"

    @vignette2 = Vignette.new(comic_trip_id:@comic_trip.id, text01: params[:comic][:text3], text02: params[:comic][:text4])
    @vignette2.save!

    name = params[:comic][:vig2][:background] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig2Ele1 = Composition.new(vignette_id: @vignette2.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig2Ele1.save!

    name = params[:comic][:vig2][:character1] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig2Ele2 = Composition.new(vignette_id: @vignette2.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig2Ele2.save!

    name = params[:comic][:vig2][:character2] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig2Ele3 = Composition.new(vignette_id: @vignette2.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig2Ele3.save!

    p "Vignette 3"

    @vignette3 = Vignette.new(comic_trip_id:@comic_trip.id, text01: params[:comic][:text5], text02: params[:comic][:text6])
    @vignette3.save!

    name = params[:comic][:vig3][:background] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig3Ele1 = Composition.new(vignette_id: @vignette3.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig3Ele1.save!

    name = params[:comic][:vig3][:character1] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig3Ele2 = Composition.new(vignette_id: @vignette3.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig3Ele2.save!

    name = params[:comic][:vig3][:character2] # Danger: can be "", in which case we want to take the "Placeholder"
    @compVig3Ele3 = Composition.new(vignette_id: @vignette3.id, element_id: Element.find_by(name: name.empty? ? "Placeholder" : name).id)
    @compVig3Ele3.save!

    if @comic_trip.save
      redirect_to @comic_trip, notice: "ComiX was successfully created."
    else
      render :new, status: :unprocessable_entity
    end

  end

  def update

  end

  def destroy
    @comic_trip.destroy!
    redirect_to comics_url, notice: "Your ComiX Trip was successfully destroyed.", status: :see_other
  end

  private

  def comic_params
    params.require(:comic_trip).permit(:title, :category, :vig1, :vig2, :vig3)
  end

  # def vig1_params
  #   params.require(:vignette1).permit(:background, :character1, :character2, :text01, :text02)
  # end

  # def vig2_params
  #   params.require(:vignette2).permit(:background, :character1, :character2, :text01, :text02)
  # end

  # def vig3_params
  #   params.require(:vignette3).permit(:background, :character1, :character2, :text01, :text02)
  # end

end
