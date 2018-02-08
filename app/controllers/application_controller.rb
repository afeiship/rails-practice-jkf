class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :format_time, :format_date

  def api_error(opts = {})
    render head: :unauthorized, status: opts[:status]
  end

  protected
  def login?
    auth=request.headers[:Authorization]
    if !!auth
      user = User.find_by_auth_token auth
      if user
        session[:current] = user
      else
        render :json => {
            data: nil, code: 403
        }
      end
    else
      redirect_to :login
    end
  end


end
