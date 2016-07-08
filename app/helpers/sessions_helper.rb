module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def current_user=(user)
    @current_user = user
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
  end
end
