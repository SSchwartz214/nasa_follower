class HomeController < ApplicationController
  def index
    @pod = DashboardController.new.index
  end
end