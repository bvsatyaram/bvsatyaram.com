class ProjectsController < ApplicationController
  def index
    @page_title = "Projects"
    @page_heading = "Projects"
  end

  def downloads_count
    @project_title = params[:title]
    scrap_params = get_scrap_params(params[:title])
    @scrapped_text = QuickScrapper.scrap(scrap_params[:url], scrap_params[:css_selector])
    render :text => @scrapped_text.split[0]
  end

  ####################
  # Project Demo Pages
  ####################

  def lazy_styler
    @page_title = "Projects | Lazy Styler"
    @page_heading = "Lazy Styler"
    @page_subheading = "project demo"
    @initial_beauty_of_code_js = true
  end

  private

  def get_scrap_params(title)
    scrap_params = {}
    scrap_params[:css_selector] = "html body div.container_12 div.prefix_1 div.info div.border div.meta div.who div.downloads"
    case title
    when "validate_email"
      scrap_params[:url] = "http://rubygems.org/gems/ValidateEmail"
    when "quick_scrapper"
      scrap_params[:url] = "http://rubygems.org/gems/quick_scrapper"
    when "truncateHTML"
      scrap_params[:url] = "http://rubygems.org/gems/truncateHTML"
    when "flames"
      scrap_params[:url] = "http://rubygems.org/gems/flames"
    when "random_password_generator"
      scrap_params[:url] = "http://rubygems.org/gems/random_password_generator"
    when "facebooker"
      scrap_params[:url] = "http://rubygems.org/gems/facebooker3"
    when "ruby_data_structures"
      scrap_params[:url] = "http://rubygems.org/gems/RubyDataStructures"
    when "back_mark"
      scrap_params[:url] = "http://rubygems.org/gems/back_mark"
    end

    return scrap_params
  end
end
