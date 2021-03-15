class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, only: %i[edit update destroy ]

  def index
    @products = Product.all
    @title = "Productos"
  end

  def show
  end

  def new
    @product = Product.new
    authorize @product
  end

  def edit
    authorize @product
  end

  def create
    @product = current_user.products.create(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_path, notice: "Producto creado." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_path, notice: "Producto actualizado." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, alert: "Producto eliminado." }
    end
  end

  private

    def set_product
      # @product = Product.find(params[:id])
      @product = Product.friendly.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:nombre, :existencia, :p_costo, :p_minimo, :p_venta, :total_costo, :v_precio_venta, :gondola)
    end
end
