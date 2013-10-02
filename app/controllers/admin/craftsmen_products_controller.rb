class Admin::CraftsmenProductsController < ApplicationController
  # GET /craftsmen_products
  # GET /craftsmen_products.json
  layout 'admin'
  def index
    @craftsmen_products = CraftsmenProduct.order('created_at DESC').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @craftsmen_products }
    end
  end

  # GET /craftsmen_products/1
  # GET /craftsmen_products/1.json
  def show
    @craftsmen_product = CraftsmenProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @craftsmen_product }
    end
  end

  # GET /craftsmen_products/new
  # GET /craftsmen_products/new.json
  def new
    @craftsmen_product = CraftsmenProduct.new(:craftsman_id => params[:craftsman_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @craftsmen_product }
    end
  end

  # GET /craftsmen_products/1/edit
  def edit
    @craftsmen_product = CraftsmenProduct.find(params[:id])
  end

  # POST /craftsmen_products
  # POST /craftsmen_products.json
  def create
    @craftsmen_product = CraftsmenProduct.new(params[:craftsmen_product])

    respond_to do |format|
      if @craftsmen_product.save
        format.html { redirect_to [:admin, @craftsmen_product], notice: 'Craftsmen product was successfully created.' }
        format.json { render json: @craftsmen_product, status: :created, location: @craftsmen_product }
      else
        format.html { render action: "new" }
        format.json { render json: @craftsmen_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /craftsmen_products/1
  # PUT /craftsmen_products/1.json
  def update
    @craftsmen_product = CraftsmenProduct.find(params[:id])

    respond_to do |format|
      if @craftsmen_product.update_attributes(params[:craftsmen_product])
        format.html { redirect_to [:admin, @craftsmen_product]}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @craftsmen_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /craftsmen_products/1
  # DELETE /craftsmen_products/1.json
  def destroy
    @craftsmen_product = CraftsmenProduct.find(params[:id])
    @craftsmen_product.destroy

    respond_to do |format|
      format.html { redirect_to craftsmen_products_url }
      format.json { head :no_content }
    end
  end
end
