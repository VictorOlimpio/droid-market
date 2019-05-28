class UsuariosController < ApplicationController
  before_action :set_usuario, except: [:index, :create]

  def index
    @usuarios = Usuario.all.order(:nome)
    render json: @usuarios
  end

  def show
    render json: @usuario
  end

  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.save ? render(status: :created) :
        render(json: @usuario.errors, status: :unprocessable_entity)
  end

  def destroy
    destruidor = Destruidor::Usuario.new(@usuario)
    render json: destruidor.errors unless destruidor.salvar
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end

  def usuario_params
    params.require(:usuario).permit(:nome, :cpf, :telefone, :email, :tipo)
  end
end