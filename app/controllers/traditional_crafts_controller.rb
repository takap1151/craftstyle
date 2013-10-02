class TraditionalCraftsController < ApplicationController
  before_filter :sns_url

  def sns_url
    @url = "traditional_crafts"
    @id = TraditionalCraft.find_by_id(params[:id])
    if @id
      @url = "traditional_crafts/#{@id.id}"
    else
      @url = 'traditional_crafts'
    end
  end

  def index
    @traditional_crafts = TraditionalCraft.all
  end

  def show
    @traditional_craft = TraditionalCraft.find(params[:id])
  end

end
