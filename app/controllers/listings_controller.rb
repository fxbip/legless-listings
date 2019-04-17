class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def create
        # create new listings
    end

    def update
        # updates the current listing
    end

    def index
        # shows all listings
        @listings = Listings.all
    end

    def edit
        # shows the edit form
    end

    def destroy
        # deletes the current listing
    end

    def new
        # shows form for creating a new listing
        @listing = Listing.new
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end

    def show
        # shows the current listing
    end

    private

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end
end