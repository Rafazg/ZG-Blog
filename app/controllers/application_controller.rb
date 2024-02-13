class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin!
    authenticate_user!

    unless current_user.admin? || params[:action] == 'show'
      flash[:alert] = "Acesso negado. Você não é um administrador."
      redirect_to root_path
    end
  end
end
