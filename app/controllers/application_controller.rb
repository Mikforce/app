class ApplicationController < ActionController::Base
  def create
    root to: 'tamplates#base'
  end
end
