class JapanStylesController < ApplicationController
  before_filter :sns_url

  def sns_url
    @url = "japan_styles"
    @id = JapanStyle.find_by_id(params[:id])
    if @id
      @url = "japan_styles/#{@id.id}"
    else
      @url = 'japan_styles'
    end
  end

  def index
    @japan_styles = JapanStyle.order('created_at DESC').all
  end

  def show
    @japan_style = JapanStyle.find(params[:id])

    @other_japan_styles = JapanStyle.where('id <> ? and updated_at >= ?' , @japan_style.id, @japan_style.updated_at).order('id').limit(16)
    if @other_japan_styles.size < 16 
      @other_japan_styles = JapanStyle.where('id <> ?', @japan_style.id).order('id').limit(16).reverse
    end
  end
end
