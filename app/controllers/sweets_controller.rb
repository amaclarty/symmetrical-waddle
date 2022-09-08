class SweetsController < ApplicationController
    def index
        sweets = Sweet.all 
        render json: sweets
    end
    def show
        sweet = Sweet
                    .find_by(id: params[:id])
                    # if sweet = true
                            render json: sweet
                    # else
                    #     render json: sweet.errors.full_messages, status: 422
                    # end
    # else
    #     render json: sweet.errors.full_messages, status: 422

    # ^^^^^^^^^
    #  kept breaking stuff here, honestly just could not get the syntax right to make the errors work
    #  ^^^^^^^^^^
    end
end
