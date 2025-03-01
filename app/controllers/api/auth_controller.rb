class Api::AuthController < ApplicationController
  # skip_before_action :authenticate_admin!, only: [:login]

  def login
    admin = Admin.find_by(email: params[:email])
    
    if admin&.authenticate(params[:password])
      token = JsonWebToken.encode(admin_id: admin.id)
      render json: { token: token }, status: :ok
    else
      render json: { error: 'Невірний email або пароль' }, status: :unauthorized
    end
  end
end