class WelcomeController < ApplicationController
  before_filter :authenticate_cas

  def index
    render :text => '<h1>yes you are</h1>'
  end
end