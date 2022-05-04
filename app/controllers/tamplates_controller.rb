class TamplatesController < ApplicationController


  def create
    @tamplate = Tamplate.create(
      name: params[:tamplate][:name],
      chernovik: params[:tamplate][:chernovik],
      opisanie: params[:tamplate][:opisanie],
      types: params[:tamplate][:types],
      koef: params[:tamplate][:koef]
    )

    redirect_to tamplate_path(tamplate)
  end

  def update
    @tamplate = Tamplate.find(params[:id])
    @tamplate.update(
      name: params[:tamplate][:name],
      chernovik: params[:tamplate][:chernovik],
      opisanie: params[:tamplate][:opisanie],
      types: params[:tamplate][:types],
      koef: params[:tamplate][:koef]
    )
  end

  def delete
    @tamplate = Tamplate.find(params[:id])
    @tamplate.destroy
  end

  def show
    @tamplates = Tamplate.find(params[:id])
  end

  def index
    @tamplates = Tamplate.all
  end

  def new
    @tamplate = Tamplate.new
  end

  def edit
    @tamplates = Tamplate.find(params[:id])
  end

end
