class BrowserLanguagesController < ApplicationController
  def create
    @browser_language = BroserLanguage.new(browser_language_params)
    if @browser_language.save
      redirect_to smart_links_path
    else
      render :new
    end
  end

  private

  def browser_language_params
    params.require(:browser_language).permit(:language, :extension, :new_title)
  end
end
