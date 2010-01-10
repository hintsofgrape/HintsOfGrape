class InfoController < ApplicationController
  def index
    if request.post?
      session[:wine] = params[:wine]
      redirect_to(:action => :results)
    end
  end

  def results
    @wines = Wine.find_special_wines(session[:wine])
  end
end
