class DashboardController < ApplicationController
  def index
    @pod = NasaService.new.pod
  end
end