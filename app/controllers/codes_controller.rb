class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def show
  end
end
