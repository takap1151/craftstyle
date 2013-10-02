# -*- encoding : utf-8 -*-
class Admin::CraftsmenController < ApplicationController
  http_basic_authenticate_with :name => "hoge", :password => "hoge"
  layout 'admin'

  before_filter :authenticate_admin_user
  #deviseが定義しているautenticate_user!メソッドはユーザー認証済みかチェックを行い、ログインされていない場合、トップページへリダイレクトする
  #ただし、exeptメソッドで定義されたindexとshowページは除外されるため、ログインしていなくてもページヘ行ける

  def index
    @craftsmen = Craftsman.order('created_at DESC').all
  end

  def show
    @craftsman = Craftsman.find_by_id(params[:id])
    if @craftsman.blank?
      redirect_to root_path, alert: 'Craftsman was not found'
    else
    end
  end

  def new
    @craftsman = Craftsman.new
  end

  def edit
    @craftsman = Craftsman.find_by_id(params[:id])
    if @craftsman.blank?
      redirect_to root_path, alert: 'Craftsman was not found'
    end
  end

  def create
    @craftsman = Craftsman.new(params[:craftsman])
    if @craftsman.save
      redirect_to [:admin, @craftsman], notice: 'Craftsman was successfully created'
    else
      render action: "new"
    end
  end

  def update
    @craftsman = Craftsman.find_by_id(params[:id])
    if @craftsman.present?
      if @craftsman.update_attributes(params[:craftsman])
      redirect_to [:admin, @craftsman], notice: 'Craftsman was successfully update'
      else
        render action: "edit"
      end
    else
      redirect_to root_path, aleat:'Craftsman was not found'
    end
  end

  def destroy
    @craftsman = Craftsman.find_by_id(params[:id])

    if @craftsman.present?
      @craftsman.destroy
      redirect_to [:admin, craftsman_path], notice: 'Craftsman was successfully deleted'
    else
      redirect_to root_path, aleart: 'Craftsman was not found...'
    end
  end
end
