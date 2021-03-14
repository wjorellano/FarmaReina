class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[ destroy edit update]
  def index
    @groups = Group.all
    @title = "Grupos de inventarios"
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = current_user.groups.create(group_params)
    respond_to do |format|
      if @group.save
        format.html { redirect_to group_inventories_path(@group), notice: "Grupo creado."}
        format.js
      else
        format.html {redirect_to groups_path, alert: "Error al crear el grupo"}
      end
    end
  end

  private

  def set_group
    # @group = Group.find(params[:id])
    @group = Group.friendly.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:nombre, :sub_total, :total)
  end
end
