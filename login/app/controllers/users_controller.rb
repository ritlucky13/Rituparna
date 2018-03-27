=begin
class UsersController < ActionController::Base
  protect_from_forgery with: :exception
  def create
  end
  def show
@user = User.all
      @username=params[:username]
      @pw=params[:password]
      @user.each do |i|
        if i.username == @username && i.password == @pw
          @j = "true"
        else
         # @j = "false"
        end
      end
  end
  def create
    @u = params[:username ]
    @p = params[:password ]
    User.create(:username=>@u, :password=>@p)
  end
    
end
=end

class UsersController < ApplicationController
    def show
        @user = User.all
        @u = params[:username]
        @p = params[:password]
        
        @user.each do |u|
            if u.username= @u
                @state = u.authenticate(@p)
            end
            
        end
        
    end
    def create
    
    end
end