class InventoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group
  before_action :set_inventory, only: %i[ edit destroy update]

  def index
    @inventories = @group.inventories.all
    @title = "Grupo de #{@group.nombre}"
    @inventory = @group.inventories.build
    @total = @inventories.sum(:producto_total) || 0
  end

  # def new
  # end

  def edit
    authorize @inventory
  end

  def create
    @inventory = @group.inventories.build(inventory_params)
    respond_to do |format|
      if @inventory.save
        format.html { redirect_to group_inventories_path, notice: 'Producto agregado al inventario.'}
        format.js
      else
        format.html { redirect_to group_inventories_path, alert: 'Error al momento de agregar al inventario.'}
      end
    end
  end

  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html {redirect_to group_inventories_path, notice: "Producto removido del inventario."}
    end
  end

  private

  def set_group
    # @group = Group.find(params[:group_id])
    @group = Group.friendly.find(params[:group_id])
  end

  def set_inventory
    @inventory = @group.inventories.find(params[:id])
  end

  def inventory_params
    params.require(:inventory).permit(:producto_total, :inv_total, :cantidad, :product_id)
  end
end
