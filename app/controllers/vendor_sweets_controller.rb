class VendorSweetsController < ApplicationController
    def create
        vendor_sweet = VendorSweet.create!
        # params [price:integer vendor_id:integer sweet_id:integer]
        price: params[:price]
        vendor_id: params[:vendor_id]
        sweet_id: params[:sweet_id]
        if vendor_sweet.save
            render json: vendor_sweet
        else 
            render json: vendor.errors.full_messages, status: 422
    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id:params[:id])
        vendor_sweet.destroy 
        render json: {}
    end
    # render :json { :errors => @model.errors.full_messages }, :status 422
    # end
end
