{"filter":false,"title":"users_controller.rb","tooltip":"/railsproject1/login_app/app/controllers/users_controller.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":47,"column":3},"action":"remove","lines":["class UsersController < ApplicationController","    def login","=begin","        @user = User.all","        @u = params[:username]","        @p = params[:password]","        @en_pass = BCrypt::Password.create(@p)","        if @en_pass == @p","            @t = \"true\" ","        end","        @user.each do |u|","            if u.username == @u && u.password == BCrypt::Password.new(@en_pass)","                @st = \"true\"","            end","        end","=end","        @apple = Apple.all","        @u = params[:username]","        @p = params[:password]","        #@a1 = Apple.authenticate('12345')","        @apple.each do |a|","            if a.username == @u","                #@id = a.id","                ##@a = Apple.find(@id)","                @state = a.authenticate(@p)        ","            end","        end","        #@a = Apple.find(@id)","        #@state = @a.authenticate(@p)","=begin","        @apple.each do |a|","            if a.username == @u","                @st = \"true\"","                @id = a.id","                @find = Apple.find(@id)","            end","        end","=end","        #@u_find = Apple.find_by username: @u","        #@st = @u_find.authenticate(@u)","    end","    def register","        @u = params[:username]","        @p = params[:password]","        @en_pass = BCrypt::Password.create(@p)","        @st = User.create(:username=>@u,:password=>@en_pass)","    end","end"],"id":2}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":0,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1522139300459,"hash":"da39a3ee5e6b4b0d3255bfef95601890afd80709"}