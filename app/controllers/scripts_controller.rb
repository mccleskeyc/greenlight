class ScriptsController < ApplicationController
    get '/scripts' do
      @scripts = Script.all
      erb :'scripts/index'
    end
    
    get '/scripts/new' do
      erb :'scripts/new'
    end
    
    get '/scripts/:id' do
      find_script
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
    "hello world"
  end

  def find_script
    @scripts = Script.find_by_id(params[:id])
  end



