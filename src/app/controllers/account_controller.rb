class AccountController < ApplicationController
    def logout
        # logout処理

        # 処理後showを呼び出し
        redirect_to action: :show
    end
    def show
    end
    def login
    end
end
