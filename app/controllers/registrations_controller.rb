class RegistrationsController < Devise::RegistrationsController
  private

  def after_sign_up_path_for(tamplate)
    root_path
  end
end
