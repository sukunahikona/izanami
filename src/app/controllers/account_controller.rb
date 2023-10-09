class AccountController < ApplicationController
    def logout
        # logout処理
        reset_session
        # 処理後showを呼び出し
        redirect_to action: :login
    end
    def show
    end
    def login
    end
    def signin
        logger.debug(params)
        email = params[:email]
        password = params[:password]
        logger.debug(email)
        logger.debug(password)
        session[:email] = email
        redirect_to action: :login
    end    
end
