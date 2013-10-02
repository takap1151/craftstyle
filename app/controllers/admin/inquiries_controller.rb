class Admin::InquiriesController < ApplicationController
  layout 'admin'

  def index
    @inquiries = Inquiry.order('created_at DESC').all
  end

  def show
    @inquiry = Inquiry.find(params[:id])
  end

  def reply
    @inquiry = Inquiry.find(params[:id])
    @inquiry.save                                             
    redirect_to [:admin, @inquiry]
  end 
   end
