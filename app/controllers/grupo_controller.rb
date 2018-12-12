class GrupoController < ApplicationController
  before_action :find_grupos, only: [:edit, :update, :show, :delete]

  def index
    @grupos = Grupo.all
  end

  def new
    @grupos = Grupo.new
  end

  def create
    @grupos = Grupo.new(grupos_params)
    if @grupos.save
      flash[:notice] = "Creacion de grupo exitosa"
      redirect_to @grupos
    else
      flash[:alert] = "Error Creando grupo"
      render 'new'
    end
  end

  def show
    @grupos = Grupo.find(params[:id])

  end

  def edit
    @grupos = Grupo.find(params[:id])
  end

  def update
    if @grupos.update_attributes(post_params)
      flash[:notice] = "Actualizacion exitosa!"
      redirect_to grupos_path(@posts)
    else
      flash[:alert] = "Error no se pudo actualizar !"
      render :edit
    end
  end


  def delete
    if @grupos.delete
      flash[:notice] = "Borrado exitoso!"
      redirect_to grupos_path
    else
      flash[:alert] = "No se pudo borrar!"
    end
  end
  private
  def grupos_params
    params.require(:grupo).permit(:id,:nom_tipo_equipo, :descripcion)
  end

  def find_grupos
    @grupos = Grupo.find(params[:id])
  end
end
