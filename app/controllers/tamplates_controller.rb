class TamplatesController < ApplicationController
  before_action :set_tamplate, only: %i[update show destroy edit]

  def create

    tamplate = Tamplate.create(tamplate_params)

    redirect_to tamplate_path(tamplate)
  end

  def update
    @tamplate.update(tamplate_params)

    redirect_to tamplate_path(@tamplate)
  end

  def destroy
    @tamplate.destroy

    redirect_to tamplate_path
  end

  def show
  end

  def index
    @tamplates = Tamplate.all
  end

  def new
    @tamplate = Tamplate.new
  end

  def edit

  end

  private

  def tamplate_params
    params.require(:tamplate).permit(:name, :chernovik, :opisanie, :types, :koef)
  end

  def set_tamplate
    @tamplates = Tamplate.find(params[:id])
  end

end
