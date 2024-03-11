class VignettesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :update ]


  def new
    @vignette = Vignette.new
  end

  def create
    p "hello from Vignette"
    @vignette = Vignette.new(vignette_params)

  end

  def update

  end

  def destroy

  end

  private

  def vignette_params
    params.require(:vignette).permit(:text)
  end



end
