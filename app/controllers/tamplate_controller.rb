class TamplateController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    Template.create(
      name: params[:tamplate][:name],
      chernovik: params[:tamplate][:chernovik],
      opisanie: params[:tamplate][:opisanie],
      types: params[:tamplate][:types],
      koef: params[:tamplate][:koef]
    )
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
    @tamplate = Tamplate.find(params[:id])
  end

  def index
    @tamplate = Tamplate.all
  end
end
