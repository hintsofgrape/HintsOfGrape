class InfoController < ApplicationController
  before_filter :get_results

  def index
    @results = get_results
  end

  def search
    @results.wines = Wine.find_wine_by_term(params[:term])
    respond_to do |format|
      format.js if request.xhr?
      format.html { redirect_to(:action => 'index') }
    end
  end

  private
  def get_results
    @results = (session[:results] ||= Results.new)
  end
end
