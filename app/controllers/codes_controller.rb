class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def new
    @code = Code.new
  end

  def show

  end

  private
  def code_params
    params.require(:code).permit(:title, :difficulty, :problem_description)
  end
end
