class BillSplitterController < ApplicationController
  def index
    # doesn't go in index when you render so won't get here
    # @result = params[:result]
  end

  # posts to another page
  # def create
  #   @amount = params[:amount].to_f
  #   @taxes = params[:taxes].to_f/100
  #   @tips = params[:tips].to_f
  #   @people = params[:people].to_f
  #
  #   render plain: "Your total is #{(@amount * @taxes * @tips / @people).round(2) } each."
  #   #
  #   # redirect_to bill_submit_path({ result: params[:result] })
  # end

  def create
    # byebug
    amount = params[:amount].to_f
    tax = params[:tax].to_f
    tip = params[:tip].to_f
    people = params[:people].to_f
    # @result = ((amount * (1 + tax/100) * (1 + tip/100)) / people).round(2)

    # renders and makes it load within the same page
    # render :index

    #redirects to a "new page" so need to pass in result: result as a param
    result = ((amount * (1 + tax/100) * (1 + tip/100)) / people).round(2)
    redirect_to bill_splitter_path({result: result})
  end
end
