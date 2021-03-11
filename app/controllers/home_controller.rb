class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @title = "Inicio"
  end
end
