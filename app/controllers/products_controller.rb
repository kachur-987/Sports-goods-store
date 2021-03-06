class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        flash[:notice] = "Successfully created"
        redirect_to product_path(@product.id)
      else
        flash[:error] = "Has error with created"
        render 'new'
      end
    end

    def show
      @q = Product.ransack(params[:q])
      @products = @q.result(distinct: true)
    end

    def edit
    end

    def update
      if @product.update(product_params)
        flash[:notice] = "Successfully updated"
        redirect_to product_path(@product.id)
      else
        flash[:error] = "Has error with created"
        render 'edit'
      end
    end

    def destroy
      @product.destroy
      redirect_to root_path
    end
  private
    def product_params
      params.require(:product).permit(:title, :description, :price, :category_id, :country_id, :producer , {photos: []})
    end

    def find_product
     @product = Product.find_by(id: params[:id])
    end
end
