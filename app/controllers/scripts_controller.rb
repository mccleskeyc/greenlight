class ScriptsController < ApplicationController
  get '/scripts' do
    redirect_if_not_signed_in
    if params[:filter]
      @scripts = current_user.scripts.by_writer(params[:filter])
    else
    @scripts = current_user.scripts
    end
    @script = Script.find_by_id(session[:script_id])
    erb :'scripts/index'
  end
  
  get '/scripts/new' do
    redirect_if_not_signed_in
    erb :'scripts/new'
  end
  
  get '/scripts/:id' do
    redirect_if_not_signed_in
    find_script
    redirect_if_not_owner
    session[:script_id] = @script.id if @script
    redirect_if_not_found
    erb :'scripts/show'
  end

  get '/scripts/:id/edit' do
    redirect_if_not_signed_in
    find_script
    redirect_if_not_owner
    erb :'scripts/edit'
  end

  post '/scripts' do
    redirect_if_not_signed_in
    script = current_user.scripts.build(params[:scripts])
    if script.save
      redirect '/scripts'
    else
      redirect '/scripts/new'
    end
  end

  delete '/scripts/:id' do
    find_script
    redirect_if_not_owner
    @scripts.destroy if @scripts
    redirect "/scripts"
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



def find_script
  @scripts = Script.find_by_id(params[:id])
end

def redirect_if_not_found
  redirect "/scripts" unless @scripts
end

def redirect_if_not_owner
  redirect "/scripts" unless @scripts.user == current_user
end