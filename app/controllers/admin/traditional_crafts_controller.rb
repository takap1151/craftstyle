class Admin::TraditionalCraftsController < ApplicationController
  # GET /traditional_crafts
  # GET /traditional_crafts.json
  layout 'admin'
  def index
    @traditional_crafts = TraditionalCraft.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @traditional_crafts }
    end
  end

  # GET /traditional_crafts/1
  # GET /traditional_crafts/1.json
  def show
    @traditional_craft = TraditionalCraft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @traditional_craft }
    end
  end

  # GET /traditional_crafts/new
  # GET /traditional_crafts/new.json
  def new
    @traditional_craft = TraditionalCraft.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @traditional_craft }
    end
  end

  # GET /traditional_crafts/1/edit
  def edit
    @traditional_craft = TraditionalCraft.find(params[:id])
  end

  # POST /traditional_crafts
  # POST /traditional_crafts.json
  def create
    @traditional_craft = TraditionalCraft.new(params[:traditional_craft])

    respond_to do |format|
      if @traditional_craft.save
        format.html { redirect_to [:admin, @traditional_craft], notice: 'Traditional craft was successfully created.' }
        format.json { render json: @traditional_craft, status: :created, location: @traditional_craft }
      else
        format.html { render action: "new" }
        format.json { render json: @traditional_craft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /traditional_crafts/1
  # PUT /traditional_crafts/1.json
  def update
    @traditional_craft = TraditionalCraft.find(params[:id])

    respond_to do |format|
      if @traditional_craft.update_attributes(params[:traditional_craft])
        format.html { redirect_to [:admin, @traditional_craft], notice: 'Traditional craft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @traditional_craft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traditional_crafts/1
  # DELETE /traditional_crafts/1.json
  def destroy
    @traditional_craft = TraditionalCraft.find(params[:id])
    @traditional_craft.destroy

    respond_to do |format|
      format.html { redirect_to traditional_crafts_url }
      format.json { head :no_content }
    end
  end
end
