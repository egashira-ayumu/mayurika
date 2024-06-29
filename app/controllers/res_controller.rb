class ResController < ApplicationController
    def index
    end
  
    def new
      @res = Re.new
    end
  
    def show
      @res = Re.find(params[:id])
    end
  
    def create
      @res = Re.new(res_params)
      params[:re][:question] ? @res.question = params[:re][:question].join("") : false
      if @res.save
          flash[:notice] = "診断が完了しました"
          redirect_to "/res/#{@res.id}"
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def res_params
        params.require(:re).permit(:id, question: [])
    end
  end