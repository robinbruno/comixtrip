class VignettesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :update ]


  def new

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def vignette_params

  end



end
