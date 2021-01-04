class SessionsController < ApplicationController

    get '/signup' do
    
        erb :'sessions/signup'
    end

    post '/signup' do
        user = User.new(params[:user])
        if user.save
          session[:user_id] = user.id
          redirect "scripts"
        else
          redirect "/signup"
        end
      end

      get '/login' do
        erb :'sessions/login'
      end

      post '/login' do
        user = User.find_by_username(params[:user][:username])
        if user && user.authenticate(params[:user][:password]) # checks if user is true and password matches encrypted version
          session[:user_id] = user.id
          redirect "/scripts"
        else
          redirect "/login"
        end
      end

      get '/logout' do
        session.clear
        redirect "/login"
      end

end