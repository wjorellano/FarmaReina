class SalesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sale, only:[:destroy, :edit, :update]

  def index
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    respond_to do |format|
      if @sale.save
        format.html {redirect_to sales_path, notice: "Venta creada"}
      else
        render :new
      end
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
