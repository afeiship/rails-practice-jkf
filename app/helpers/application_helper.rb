module ApplicationHelper
    
    def format_time(time)
        time.strftime("%Y-%m-%d %H:%M:%S")
    end

    def format_date(time)
        time.strftime("%Y-%m-%d")
    end

    def current_user
        session[:current]
    end
    
end
