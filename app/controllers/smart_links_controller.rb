class SmartLinksController < ApplicationController
  before_action :set_smart_link, only: [:show, :edit, :update, :destroy]

  def index
    @smart_links = SmartLink.all
  end

  def show
    # TODO
    # if browser is in spanish aply broser_language ES
    # if browser is in german aply broser_language DE
    # if browser is in another language aply broser_language EN
    # redirect to browser language link
  end

  def new
    @smart_link = SmartLink.new
  end

  def create
    @smart_link = SmartLink.new(smart_link_params)
    if @smart_link.save
      redirect_to smart_links_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @smart_link.update(smart_link_params)
    redirect_to smart_links_path
  end

  def destroy
    @smart_link.destroy
    redirect_to smart_link_params
  end

  private

  def set_smart_link
    @smart_link = SmartLink.find(params[:id])
  end

  def smart_link_params
    params.require(:smart_link).permit(:title, :url)
  end
end
