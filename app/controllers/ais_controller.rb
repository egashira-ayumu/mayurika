class AisController < ApplicationController
    def index
    end
  
    def new
      @ai = Ai.new
    end
  
    def show
      @ais = Ai.find_by(id: params[:id])
    end
  
    def create
      @ais = Ai.new(ais_params)
      if @ais.save
          flash[:notice] = "診断が完了しました"
          redirect_to "/ais/#{@ais.id}"
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def ais_params
        params.require(:ai).permit(:question)
    end
  end