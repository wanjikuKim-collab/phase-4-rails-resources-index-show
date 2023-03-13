class BirdsController < ApplicationController
    
  # GET /birds
    def index
        render json: Bird.all, status: :ok
    end

    #GET /birds/:id
    def show
        bird = Bird.find(params[:id])

       if bird
        render json: bird, status: :ok
       else
        render json: {error: "Bird not found"}, status: :not_found
        
       end
    end
end
