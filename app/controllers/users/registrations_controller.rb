# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'page', only: %i[update]
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  before_action :set_user, only: %i[show,edit,update,destroy]

  def new
    @user = User.new
  end
  
  def create
    user = User.new(configure_sign_up_params)
    check_mail(user.email)
    begin
      user.role = 'standard'
      user.save!
      redirect_to new_user_session_path,
      alert: 'dang ki thanh cong'
    rescue => exception
      redirect_to new_user_registration_path,
      alert:"#{exception}"
    end
  end
  
  def update
    begin
      @user.update!(configure_account_update_params)
      session[:current_user_id] = @user.id
      redirect_to root_path
    rescue => exception
      redirect_to edit_user_registration_path,
      alert:"#{exception}"
    end
    
  end

  def configure_account_update_params
    params.require(:user)
          .permit(:username, :avatar)
  end

  def configure_sign_up_params
    params.require(:user)
          .permit(:username, :email, :password, :password_confirmation)
           
  end 
  
  def check_mail(email)
    user = User.find_by(email: email)
    return true if user.nil?
  end

  def edit
    super
  end

end
