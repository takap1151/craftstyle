class Admin::JapanStylesController < ApplicationController
  layout 'admin'
  # GET /japan_styles
  # GET /japan_styles.json
  def index
    @japan_styles = JapanStyle.order('created_at DESC').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @japan_styles }
    end
  end

  # GET /japan_styles/1
  # GET /japan_styles/1.json
  def show
    @japan_style = JapanStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @japan_style }
    end
  end

  # GET /japan_styles/new
  # GET /japan_styles/new.json
  def new
    @japan_style = JapanStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @japan_style }
    end
  end

  # GET /japan_styles/1/edit
  def edit
    @japan_style = JapanStyle.find(params[:id])
  end

  # POST /japan_styles
  # POST /japan_styles.json
  def create
    @japan_style = JapanStyle.new(params[:japan_style])

    respond_to do |format|
      if @japan_style.save
        format.html { redirect_to [:admin, @japan_style], notice: 'Japan style was successfully created.' }
        format.json { render json: @japan_style, status: :created, location: @japan_style }
      else
        format.html { render action: "new" }
        format.json { render json: @japan_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /japan_styles/1
  # PUT /japan_styles/1.json
  def update
    @japan_style = JapanStyle.find(params[:id])

    respond_to do |format|
      if @japan_style.update_attributes(params[:japan_style])
        format.html { redirect_to [:admin, @japan_style], notice: 'Japan style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @japan_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /japan_styles/1
  # DELETE /japan_styles/1.json
  def destroy
    @japan_style = JapanStyle.find(params[:id])
    @japan_style.destroy

    respond_to do |format|
      format.html { redirect_to japan_styles_url }
      format.json { head :no_content }
    end
  end
end
