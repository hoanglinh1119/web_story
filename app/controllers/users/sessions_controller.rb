# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   @user = User.new
  # end
  # def create
  #   user = User
  #               .find_by(email: params["user"]["email"])
  #               .try(:authenticate, params["user"]["password"])
  # end
  # POST /resource/sign_in
  # def create
  #   user= User.new(configure_sign_in_params)
  #   user1= User.find_by(email: user.email)
  #   if user1.blank?
  #     return render 'new'
  #   end
  #   redirect_to signed_in_redirect_path_depends_on(user1.role)
  # end

  # private
  # def configure_sign_in_params
  #  params.require(:user).permit(:email, :password)
  # end
 
  # def signed_in_redirect_path_depends_on(role)
  #  return root_path if role == 'adminnistrator' || role == 'standard'
  # end
  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
