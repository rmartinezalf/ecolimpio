class Api::UsuarioController < ApplicationController
    before_action :set_usuario, only: [:show, :update, :destroy]
    def index
      @usuario = Usuario.all
      render json: @usuario
    end 
    def show
      render json: @usuario
    end
    def create
      @usuario = Usuario.new(usuario_params)
      if @usuario.save
        render json: @usuario, status: :created
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end 
    def update
      if @usuario.update(usuario_params)
        render json: @usuario, status: :ok
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
    def destroy
      @usuario.destroy
      head :no_content
    end
    private
      def set_usuario
        @usuario = Usuario.find(params[:id])
      end
      def usuario_params    
         params.permit(:telefono, :avatar, :localidad, :estado, :alias)      
      end
end
