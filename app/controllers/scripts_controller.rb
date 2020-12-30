class ScriptsController < ApplicationController
  get '/scripts' do
    @scripts = Script.all
    @script = Script.find_by_id(session[:script_id])
    erb :'scripts/index'
  end
    
    get '/scripts/new' do
      erb :'scripts/new'
    end
    
    get '/scripts/:id' do
      find_script
    session[:script_id] = @script.id if @script
      erb :'scripts/show'
    end

    get '/scripts/:id/edit' do
      find_script
      erb :'scripts/edit'
    end
  
    post '/scripts' do
      script = Script.new(params[:scripts])
      if script.save
        redirect '/scripts'
      else
        redirect '/scripts/new'
      end
    end

    patch "/scripts/:id" do
      find_script

      if @scripts.update(params[:scripts])
        redirect "/scripts/#{@scripts.id}"
      else
        redirect "/scripts/#{@scripts.id}/edit"
      end
    end
  end

  delete '/scripts/:id' do
    find_script
    @scripts.destroy if @scripts
    redirect "/scripts"
  end

  def find_script
    @scripts = Script.find_by_id(params[:id])
  end



