class ResultadosController < ApplicationController
  before_action :find_resultado, only: [:edit, :update, :show, :delete]

  def index
    @resultado = Resultado.all
  end

  def new
    @resultado = Resultado.new
  end

  def create
    @resultado = Resultado.new(resultado_params)
    if @resultado.save
      flash[:notice] = "Creacion de resultado exitosa"
      redirect_to @resultado
    else
      flash[:alert] = "Error Creando resultado"
      render 'new'
    end
  end

  def show
    @resultado = Resultado.find(params[:id])

  end

  def edit
    @resultado = Resultado.find(params[:id])
  end

  def update
    if @resultado.update_attributes(post_params)
      flash[:notice] = "Actualizacion exitosa!"
      redirect_to resultado_path(@posts)
    else
      flash[:alert] = "Error no se pudo actualizar !"
      render :edit
    end
  end


  def delete
    if @resultado.delete
      flash[:notice] = "Borrado exitoso!"
      redirect_to resultados_path
    else
      flash[:alert] = "No se pudo borrar!"
    end
  end
  private
  def resultado_params
    params.require(:resultado).permit(:id,:nom_resultado, :enfrentamiento, :puntos_partido, :goles_marcados, :goles_recibidos )
  end
  def find_resultado
    @resultado = Resultado.find(params[:id])
  end
end
