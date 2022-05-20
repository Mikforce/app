class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(recource)
    root_path
  end
end
