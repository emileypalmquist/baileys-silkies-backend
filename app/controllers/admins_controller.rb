class AdminsController < ApplicationController
  def show
    if current_admin
      render json: @admin
    end
  end

  def create
    admin = Admin.find_by(username: admin_params[:username])
    if admin&.authenticate(admin_params[:password])
      jwt = JWT.encode({id: admin.id}, 'my_secret')
      render json: {admin: admin, jwt: jwt}, status: :ok
    else
      render json: {errors: ['invalid username or password']}, status: :unauthorized
    end
  end

  private

  def admin_params
    params.permit(:username, :password)
  end

 
end
