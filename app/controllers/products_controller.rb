class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update delete]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to listing_products_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    if @product.update(product_params)
      redirect_to listing_products_path
    else
      render 'new'
    end
  end

  def delete
    @product.destroy
    redirect_to listing_products_path
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def product_params
    params.require(:product).permit(
      :name, :product_type, :color, :size, :unit_price
    )
  end
end
