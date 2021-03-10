class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sale, only: %i[edit update destroy ]

  def index
    @sales = Sale.all
    @valor = @sales.sum(:total) || 0
  end

  def new
    @sale = Sale.new
  end

  def edit
  end
  

  def create
    @sale = current_user.sales.new(sale_params)
    respond_to do |format|
      if @sale.save
        format.html {redirect_to sales_path, notice: "Se agrego un producto"}
        format.js
      else
        format.html {redirect_to sales_path, alert: "no se pudo agregar"}
      end
    end
  end

  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: "producto removido" }
    end
  end

  private

  def set_sale
    @sale = Sale.find(params[:id])
  end

  def sale_params
    params.require(:sale).permit(:total, :cantidad, :product_id)
  end
    
end
