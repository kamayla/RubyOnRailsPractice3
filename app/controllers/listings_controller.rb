class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listhing, only: [:show,:update,:basics,:address,:price,:photos,:calendar,:description,:bankaccount,:publish]

  def index
    @listings = current_user.listings
  end

  def new
    @listing = current_user.listings.new
  end

  def show
    @photos = @listing.photos
  end

  def create
    # パラメーターとともに現在のユーザーのリスティングを作成
    @listing = current_user.listings.new(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "リスティングを作成・保存をしました"
    else
      redirect_to new_listing_path, notice: "リスティングを作成・保存をできませんでした"
    end
  end

  def update
    if @listing.update(listing_params)
      redirect_to :back, notice: "更新できました"
    end

  end

  def end
  end

  def basics
    
  end

  def description
    
  end

  def address
    
  end
  def price
    
  end
  def photos
    @photo = Photo.new
    
  end
  def calendar
    
  end
  def bankaccount
    
  end
  def publish
    
  end


  private
  def listing_params
    params.require(:listing).permit(:home_type, :pet_type, :breeding_years, :pet_size, :price_pernight, :address, :listing_title,:listing_content,:active)
  end

  def set_listhing
    @listing = Listing.find(params[:id])
  end
end
