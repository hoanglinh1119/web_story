class Standard::ChangeInfoController < Devise::RegistrationsController
  def change_password
      @user = User.new
      redirect_to new_user_session_path unless user_signed_in?
  end

  def change_password_put
    # current_user.encrypted_password == password_params[:current_password].encryp
    begin
      current_user.update! password_params
    # session[:current_user_id] = current_user.id
    redirect_to new_user_session_path,
    alert: "ban da thay doi thanh cong, vui long dang nhap lai"
    rescue => exception
      redirect_to change_password_path,
      alert: "#{exception}"
    end 
  end

  def show
      if user_signed_in?
      @user = current_user
      end 
  end
 
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end 

  
end
