class TamplatesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_tamplate, only: %i[update show destroy edit]


  def create

    tamplate = Tamplate.create(tamplate_params)
    if tamplate.save
      redirect_to tamplates_path
    else

  end
  end

  def update
    @tamplate.update(tamplate_params)

    redirect_to tamplates_path
  end

  def destroy
    @tamplate.destroy

    redirect_to tamplates_path
  end

  def show
    @tamplates = Tamplate.all
  end

  def index
    @tamplates = Tamplate.all
  end

  def new
    @tamplate = Tamplate.new
  end

  def edit

  end

  def base
  end



  def after_sign_in_path_for(resource)
    current_user_path
  end


  private

  def tamplate_params
    params.require(:tamplate).permit(:templ_type, :koef, :name, :chernovik, :opisanie)
  end

  def set_tamplate
    @tamplate = Tamplate.find(params[:id])
  end



end
