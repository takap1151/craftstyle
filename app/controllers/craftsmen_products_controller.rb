class CraftsmenProductsController < ApplicationController
  before_filter :sns_url

  def sns_url
    @url = "craftsmen_products"
    @id = CraftsmenProduct.find_by_id(params[:id])
    if @id
      @url = "craftsmen_products/#{@id.id}"
    else
      @url = 'craftsmen_products'
    end
  end

  def index
    @craftsmen_products = CraftsmenProduct.order('updated_at DESC').all
  end

  def show
    @craftsmen_product = CraftsmenProduct.find_by_id(params[:id])
    @other_crafts = CraftsmenProduct.where('craftsman_id = ? and id <> ? ', @craftsmen_product.craftsman_id, @craftsmen_product.id).order('updated_at').limit(30)
  end
end
