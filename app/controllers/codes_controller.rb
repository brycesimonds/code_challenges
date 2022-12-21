class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def new
    @code = Code.new
  end

  def create
    code = Code.new(code_params)
    if code.save
      redirect_to codes_path 
    else 
      redirect_to new_code_path
      flash[:alert] = "Error: #{error_message(code.errors)}"
    end
  end

  def show
    @code = Code.find(params[:id])
  end

  private
  def code_params
    params.require(:code).permit(:title, :rating, :problem_description, :solution)
  end
end
