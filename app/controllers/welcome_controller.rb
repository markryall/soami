class WelcomeController < ApplicationController
  before_filter :authenticate_cas

  def index
    render :text => "<h1>yes you are #{session[:uid]}</h1>"
  end
end