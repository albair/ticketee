# The path used after sign up for inactive accounts.➥You need to overwrite
# this method in your own RegistrationsController.
class RegistrationsController < Devise::RegistrationsController

  private

  def after_inactive_sign_up_path_for(resource)
     confirm_user_path
  end

end
