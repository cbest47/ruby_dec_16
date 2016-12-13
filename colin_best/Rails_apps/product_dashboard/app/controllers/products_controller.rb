class ProductsController < ApplicationController
  def index
    @product = Product.all
  end
  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
  end
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    if @product.errors.any?
      redirect_to edit_product_path(@product), flash: {errors: @product.errors.full_messages}
    else
      redirect_to products_path
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.errors.any?
      redirect_to new_product_path, flash: {errors: @product.errors.full_messages}
    else
    redirect_to root_path(@product)
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to root_path

  end


  private

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end


end
