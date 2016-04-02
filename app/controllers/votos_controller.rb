class VotosController < ApplicationController
def  index
  @votos = Voto.all
  @votos.all.each do |voto|
    puts voto.attributes
    puts voto.hero
  end
  end

def create
  @voto = Voto.new voto_params
  if @voto.save
    redirect_to votos_path, notice: 'Voto registrado con exito'
  else
    render :new
  end
end

def new 
	render json: params
end

private
def voto_params
    params.require(:voto).permit(:hero, :email)
end

end
