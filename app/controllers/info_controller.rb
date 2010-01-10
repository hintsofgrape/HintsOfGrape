class InfoController < ApplicationController
  def index
    if request.post?
      session[:term] = params[:term]
      redirect_to(:action => :results)
    end
  end

  def results
    @wines = Wine.find_wine_by_term(session[:term])
  end
end
