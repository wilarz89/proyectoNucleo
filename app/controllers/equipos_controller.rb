class EquiposController < ApplicationController
before_action :find_equipo, only: [:edit, :update, :show, :delete]

def index
 @equipo = Equipo.all
end

def new
  @equipo = Equipo.new
end

def create
  @equipo = Equipo.new(equipo_params)
  if @equipo.save
    flash[:notice] = "Creacion de equipo exitosa"
  redirect_to @equipo
  else
    flash[:alert] = "Error Creando equipo"
    render 'new'
  end
end

def show
  @equipo = Equipo.find(params[:id])
end

def edit
  @equipo = Equipo.find(params[:id])
end

def update
  if @equipo.update_attributes(post_params)
    flash[:notice] = "Actualizacion exitosa!"
    redirect_to equipo_path(@posts)
  else
    flash[:alert] = "Error no se pudo actualizar !"
    render :edit
  end
end


def delete
  if @equipo.delete
    flash[:notice] = "Borrado exitoso!"
    redirect_to equipos_path
  else
    flash[:alert] = "No se pudo borrar!"
  end
end
private
def equipo_params
params.require(:equipo).permit(:id,:cod_equipo,:nom_equipo, :activo_equipo, :fecha_creacion, :porcentaje)
end
def find_equipo
  @equipo = Equipo.find(params[:id])
end
end