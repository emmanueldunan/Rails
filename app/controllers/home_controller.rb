class HomeController < ApplicationController
  before_filter :authorize

  def index
  	@swit = Swit.new
    @swits = Swit.order(created_at: :desc)
    respond_to do |format|
      format.html
    end
  end

  def profile
  end

  def settings
  end
end
