# -*- encoding : utf-8 -*-
class HomeController < ApplicationController
  def index 
    @craftsmen = Craftsman.order('profile_en DESC, id DESC').limit(12)
    @japan_styles = JapanStyle.order('created_at DESC').limit(12)
  end

  def sitemap
    @craftsmen = Craftsman.all
    @craftsmen_products = CraftsmenProduct.all
    @japan_styles = JapanStyle.all
  end

  def about
  end

end
