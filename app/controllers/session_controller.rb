class SessionController < ApplicationController
  def create
    puts request.env['rack.auth'].inspect
    uid = request.env['rack.auth']['uid']
    redirect_to '/' unless uid
    puts "setting session uid to #{uid}"
    session[:uid] = uid
    redirect_to session[:previous_url]
  end
end