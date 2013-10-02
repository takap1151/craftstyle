class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.save
      redirect_to complete_inquiries_path 
    else
      redirect_to root_path
    end
  end

    def complete
    end
end
