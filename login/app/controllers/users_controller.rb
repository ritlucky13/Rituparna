class UsersController < ApplicationController
    def show
        @user = User.all
        @u = params[:username]
        @p = params[:password]
        
        @user.each do |u|
            if u.username= @u && u.authenticate(@p)
                @state = u.authenticate(@p)
                session[:user_name] = u.username
                return redirect_to('/users/welcomepage')
            #else
             #   return redirect_to('/users/error')
                #redirect_to '/users/welcomepage' and return
            end
            
        end
        
    end
    def create
        @u = params[:username]
        @p = params[:password]
        @cr = User.create(:username=>@u,:password=>@p)
    end
     def view
        @abc = session[:user_name]
    end
end