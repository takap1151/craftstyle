# -*- encoding : utf-8 -*-
class CraftsmenController < ApplicationController
  before_filter :authenticate_user!, :except => ['index', 'show']
  before_filter :sns_url

  def sns_url
    @url = "craftsmen"
    @id = Craftsman.find_by_id(params[:id])
    if @id
      @url = "craftsmen/#{@id.id}"
    else
      @url = 'craftsmen'
    end
  end

  def index
    @craftsmen = Craftsman.order('profile_en DESC, id DESC').all
    @japan_styles = JapanStyle.order('created_at DESC').limit(12)
  end

  def show
    @craftsman = Craftsman.find_by_id(params[:id])
  end
end
