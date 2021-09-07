class Api::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  private
    def sign_up_params
      # ここに :age, :genderを追記
      params.permit(:name, :nickname, :email, :password, :password_confirmation)
    end

    def account_update_params
      params.permit(:name, :nickname, :image, :email, :password, :password_confirmation)
    end
end
