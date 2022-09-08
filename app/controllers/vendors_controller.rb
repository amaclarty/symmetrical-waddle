class VendorsController < ApplicationController
    def index
        vendors = Vendor.all 
        render json: vendors
    end
    def show
        vendor = Vendor
                    .find_by(id: params[:id])
                    # .to_json(methods: [:])
        render json: vendor
    end
end
